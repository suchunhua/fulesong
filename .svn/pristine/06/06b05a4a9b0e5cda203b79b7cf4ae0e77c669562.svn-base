<?php
// +----------------------------------------------------------------------
// | 科友网站管理系统  Version(1.1)
// +----------------------------------------------------------------------
// | By：General Yang; QQ:33736535
// +----------------------------------------------------------------------
// | http://www.kykkk.com
// +----------------------------------------------------------------------
// | Author: General Yang <admin@kykkk.com>
// +----------------------------------------------------------------------
namespace app\admin\controller;
use app\admin\controller\Basic;
use think\request;
use think\Db;
use think\Lang;
class Arc extends Basic{
	public function _initialize(){
		parent::_initialize();
		$this->assign('left','company');
	}
    private function ky_assign($cid,$navself = []){
    	$nav = navHandle($this->navt,$this->orgnav,$navself['id']);
        $this->assign('navson',$nav['son']);
        $this->assign('navtop',$nav['top']);
        $this->assign('navlevel',$nav['level']);
        $this->assign('navself',$nav['self']);
        $this->assign('attrlist',Db::name('attribute')->select());
        $this->assign('authlist',Db::name('mgroup')->select());
        $this->allid = $nav['allid']; 
        $tpl = ROOT_PATH.'/run_theme/'.get_langpath('admin',$this->lid).'/'.$this->cfg['theme_p'].'/detail/';
        $this->assign('showtpl',get_tpl($tpl));
        $this->assign('cid',$cid);
        $this->assign('navtopid',$nav['top']['id']);
    }
	public function index($navid,$status = 1){
        $nav = $this->navt;
        $navself = $nav::getSelf($this->orgnav,$navid);
        if($navself['cid'] == 1) $this->redirect('nav/edit', ['id' => $navid]);
		$this->ky_assign($navself['cid'],$navself);
		$data = get_list('admin',$navself['table'],$this->lid,$this->allid,10,'rank DESC',$status);
		$this->assign('datalist',$data['datalist']);
		$this->assign('pagelist',$data['pagelist']);
        $this->assign('addurl',url('add',['cid'=>$navself['cid']]));
        $this->assign('recycle',$status);
		return $this->fetch();
	}
	public function add($cid){
		$navt = $this->navt;
		$cal = ret_cal($navt,$this->cals,$cid);
        $this->ky_assign($cid);
        $this->assign('addfields',$cal['addfield'] ? get_addfield($cal['addfield']) : '');
        $this->assign('ueditor',TRUE);
        $this->assign('table',$cal['table']);
        $this->assign('noactive','yes');
		return $this->fetch($cal['table'].'_add');
	}
	public function edit($cid,$id){
		$navt = $this->navt;
		$cal = ret_cal($navt,$this->cals,$cid);
		$arc = Db::name($cal['table'])->where(['id'=>$id])->find();
		$navself = $navt::getSelf($this->orgnav,$arc['navid']);
        $this->ky_assign($cid,$navself);
        $this->assign('arc',$arc);
        $this->assign('addfields',$cal['addfield'] ? get_asfield($cal['addfield'],$arc) : '');
        $this->assign('attrs',explode(',', $arc['attr']));
        $this->assign('ueditor',TRUE);
        $this->assign('noactive','no');
        return $this->fetch($cal['table'].'_edit');
	}

    public function addHandle(){
    	$cid = $_POST['cid'];
    	unset($_POST['cid']);
        unset($_POST['editorValue']);
        $ret = ret_cal($this->navt,$this->cals,$cid);
        $table = $ret['table'];
        $navt = $this->navt;
        $this->ky_assign($cid);

        $_POST['lid'] = $this->lid;
        $_POST['click'] = mt_rand(10,99);
        $_POST['attr'] = isset($_POST['attr']) ? implode(',', $_POST['attr']) : '';
        $_POST['savedate'] = strtotime($_POST['savedate']);
        if($cid == 5) $_POST['overdue'] = strtotime($_POST['overdue']);
        if(isset($_POST['jbfl'])){
            $_POST['jbfl'] = implode(',',$_POST['jbfl']);
        }
       	$rid = Db::name($table)->insertGetId($_POST);
	    if($rid){
	        Db::name($table)->where(['id'=>$rid])->update(['rank'=>$rid]);
	        exit(json_encode(['status'=>1,'msg'=>$this->info['success'],'url'=>url('lists',['cid'=>$cid])]));
	    }else{
	        exit(json_encode(['status'=>0,'msg'=>$this->info['error']]));
	    }
    }

    public function editHandle(){
    	$cid = $_POST['cid'];
    	unset($_POST['cid']);
    	unset($_POST['editorValue']);
        $ret = ret_cal($this->navt,$this->cals,$cid);
        $table = $ret['table'];
    	$this->ky_assign(input('navid'));
       
        $_POST['lid'] = $this->lid;
        $_POST['attr'] = isset($_POST['attr']) ? implode(',', $_POST['attr']) : '';
        $_POST['savedate'] = strtotime($_POST['savedate']);
        if($cid == 5) $_POST['overdue'] = strtotime($_POST['overdue']);
        unset($_POST['file']);
        if(isset($_POST['jbfl'])){
            $_POST['jbfl'] = implode(',',$_POST['jbfl']);
        }
        
        if(Db::name($table)->where('id',input('id'))->update($_POST)){
        	exit(json_encode(['status'=>1,'msg'=>$this->info['success'],'url'=>url('lists',['cid'=>$cid])]));
        }else{
        	exit(json_encode(['status'=>0,'msg'=>$this->info['error']]));
        }
    }

	public function formctrl(){
		if(request()->isAjax()){
			$ret = ret_cal($this->navt,$this->cals,$_POST['cid']);
        	$table = $ret['table'];
			if(input('?post.settype') && input('settype') == 'setrank' && count($_POST['rank']) > 1){
				foreach($_POST['rank'] as $k=>$v){
					Db::name($table)->update(['rank' =>intval($v) ,'id'=>intval($k)]);
				}
				exit(json_encode(['status'=>1,'msg'=>$this->info['success']]));
			}
			if(input('?post.settype') && input('settype') == 'setdel' && input('?post.del')){
				foreach($_POST['del'] as $k=>$v){
					Db::name($table)->update(['status' =>0 ,'id'=>intval($k)]);
				}
				exit(json_encode(['status'=>1,'msg'=>$this->info['success']]));
			}else{
				exit(json_encode(['status'=>0,'msg'=>$this->info['nodata']]));
			}
		}
	}
	public function recyclectrl(){
		if(request()->isAjax()){
			$ret = ret_cal($this->navt,$this->cals,$_POST['cid']);
        	$table = $ret['table'];
			if(input('?post.settype') && input('settype') == 'setback' && input('?post.del')){
				foreach($_POST['del'] as $k=>$v){
					Db::name($table)->update(['status' =>1 ,'id'=>intval($k)]);
				}
				exit(json_encode(['status'=>1,'msg'=>$this->info['success']]));
			}
			if(input('?post.settype') && input('settype') == 'setdel' && input('?post.del')){
				foreach($_POST['del'] as $k=>$v){
					Db::name($table)->where('id',intval($k))->delete();
				}
				exit(json_encode(['status'=>1,'msg'=>$this->info['success']]));
			}
			exit(json_encode(['status'=>0,'msg'=>$this->info['nodata']]));
		}
	}
    public function lists($cid,$key='',$status = 1){
        $ret = ret_cal($this->navt,$this->cals,$cid);
        $table = $ret['table'];
        $status = intval($status);
        if($key !='' && mb_strlen($key,'UTF-8')<10){
           	if(is_numeric($key)){
                $data = Db::view($table,'*')
                        ->view('nav','navname',"$table.navid=nav.id")
                        ->where("$table.lid",$this->lid)
                        ->where("$table.status",$status)
                        ->where("$table.id",$key)
                        ->paginate(1);
            }else{
            	$data = Db::view("$table",'*')
						->view('nav','navname',"$table.navid=nav.id")
						->where("$table.lid",$this->lid)
						->where("$table.status",$status)
						->where("$table.title",'like','%'.$key.'%')
						->paginate(11);
            }
        }else{
            $data = \think\Db::view("$table",'*')
                         ->view('nav','navname',"$table.navid=nav.id")
                         ->where("$table.lid",$this->lid)
                         ->where("$table.status",$status)
                         ->order('id desc')
                         ->paginate(11);
        }

        $pagelist = $data->render();
        $datalist = $data->toArray();
        $this->assign('cid',$cid);
        $this->assign('pagelist',$pagelist);
        $this->assign('datalist',$datalist['data']); 
        $this->assign('displayrecycle',$status);
        if(Db::name($table)->where('status',0)->find()){
            $this->assign('displayrecycle',2);
        }
        $this->assign('addurl',url('add',['cid'=>$cid]));
        $this->assign('recycle',$status);

        $this->assign('repkey',$key);
        return $status ?  $this->fetch('index') : $this->fetch('recycle');
    }
}