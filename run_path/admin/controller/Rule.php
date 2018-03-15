<?php
namespace app\admin\controller;
use app\admin\controller\Basic;
use think\Db;
class Rule extends Basic{
	public function _initialize(){
		parent::_initialize();
		$this->assign('left','system');
		$this->assign('act','rule');
	}
	public function index(){
		$navt = $this->navt;
		$orgrules = get_rule('all');
		$new = $navt::getLevel($orgrules);
		$this->assign('datalist',$new);
		$this->assign('toplist',get_rule('top'));
		return $this->fetch();
	}
	public function add(){
		$this->assign('datalist',get_admin());
		return $this->fetch();
	}
	public function edit($id){
		$toprule = Db::name('auth_rule')->where('pid',0)->select();
		$arc  = Db::name('auth_rule')->where('id',$id)->find();
		$this->assign('rules',$toprule);
		$this->assign('arc',$arc);
		
		return $this->fetch();
	}
	public function addhandle(){
		if(Db::name('auth_rule')->insert($_POST)){
			exit(json_encode(['status'=>1,'msg'=>'新增成功']));
		}
	}
	public function editHadnle(){
		if(Db::name('auth_rule')->where('id',intval($_POST['id']))->update($_POST)){
			exit(json_encode(['status'=>1,'msg'=>'操作成功','url'=>url('index')]));
		}
		exit(json_encode(['status'=>0,'msg'=>'操作失败']));
	}
	public function del(){
		$id = intval($_POST['delid']);
		$arc  = Db::name('auth_rule')->where('id',$id)->find();
		if($arc){
			if(Db::name('auth_rule')->where('id',$arc['pid'])->find()){
				exit(json_encode(['status'=>0,'msg'=>'非底层权限']));
			}
			if(Db::name('auth_rule')->where('id',$id)->delete()){
				exit(json_encode(['status'=>1,'msg'=>'操作成功']));
			}
		}
		
	}
}