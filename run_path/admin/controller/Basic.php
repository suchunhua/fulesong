<?php
// +----------------------------------------------------------------------
// | 科友网站管理系统   Version(1.1)
// +----------------------------------------------------------------------
// | By：General Yang;  QQ:33736535
// +----------------------------------------------------------------------
// | http://www.kykkk.com
// +----------------------------------------------------------------------
// | Author: General Yang <admin@kykkk.com>
// +----------------------------------------------------------------------
namespace app\admin\controller;
use think\Controller;
use think\Db;
use think\Cookie;
use kykkk\Nav;
use think\Session;
use kykkk\Auth;
use think\Request;
class Basic extends Controller{
	public function _initialize(){
		if(!file_exists(ROOT_PATH.'/uploads/install.lock')){
			header('location:/install');
			exit;
		}
		$this->m_name = $model_name = request()->module();
		$this->c_name = $model_name = request()->controller();
		$this->a_name = $model_name = request()->action();
		$this->safe   = new \kykkk\Safe(config('safekey'));
		$this->admin  = islogin($this->safe);
		$this->admin ? '' : loginout(request()->domain());
		$this->assign('admin',$this->admin);
		
		$this->lid = session('?lid') ? session('lid') : 1;
		$this->assign('lid',$this->lid);
		$userlang = get_lang(true);
		$this->assign('uselang',$userlang);
	 	foreach($userlang as $v){
	 		if($this->lid == $v['id']){
	 			require_once APP_PATH."/lang/".$v['url'].'.php';
	 			$this->info = $info;
	 			$this->assign('home',$this->cfg['weburl'].'/?lang='.$v['url']);
	 		}
	 	}
		$not_check = [
	 					'Index_index','Nav_add','Nav_edit','Arc_add','Arc_edit','Model_index','Model_edit','Model_addfield',
	 					'Admin_groupassign','Admin_index','Admin_add','Admin_addgroup','Admin_editgroup','Admin_edit',
	 					'Rule_edit','Goods_index','Goods_add','Goods_edit','Shop_goodsnav','Goodsspec_index','Shop_addnav',
	 					'Shop_editnav','Goodstype_index','Goodstype_addspec','Goodsspec_editspec','Member_index','Member_add',
	 					'Member_edit','Mgroup_index','Mgroup_add','Mgroup_edit','Plug_index','Diyform_index','Backup_index',
	 					'Plug_add','Plug_edit','Diyform_formlist','Diyform_fieldindex','Diyform_addfield','Brand_index',
	 					'Brand_add','Brand_edit','Order_index','Goods_ajaxspec','Goods_ajaxbrand','Goods_search','Index_change'];
	 // 	if(!in_array($this->c_name.'_'.$this->a_name, $not_check)){
		// 	$auth = new Auth();
		// 	if(!$auth->check($this->c_name.'_'.$this->a_name,$this->admin['id'])){
		// 		$this->error($this->info['noauth']);
		// 	}
		// }
		$this->navt = $navt = new Nav();
		$this->orgnav = get_orgnav('admin',$this->lid);
	 	$this->cfg = get_config('admin',$this->lid);
		$this->assign('cfg',$this->cfg);
	 	$this->assign('navlist',$navt::getMulti($this->orgnav));
	 	$this->assign('style','/run_style/admin');
	 	
	 	$this->cals = get_cals();
	 	$this->assign('cals',$this->cals);
	 	$this->assign('navtopid',0);
	 	$this->assign('act','');
	 	if(!isajax()){
	 		session('mytoken', sha1(microtime().mt_rand(1111,9999)));
	 		$this->assign('mytoken',session('mytoken'));
	 	}


	 	if($this->cfg['shoping']){
	 		if(Db::name('goods')->where('issale',0)->find()){
	 			$this->assign('delgoodsnum',1);
	 		}else{
	 			$this->assign('delgoodsnum',0);
	 		}
	 	}
	}
}