<?php
namespace app\admin\controller;
use app\admin\controller\Basic;
use think\Db;
class Mgroup extends Basic{
	public function _initialize(){
		parent::_initialize();
		$this->assign('left','member');
		$this->assign('act','mgroup');
	}
	public function index(){
		$this->assign('datalist',Db::name('mgroup')->where('gid','gt',1)->select());
		return $this->fetch();
	}
	public function add(){
		return $this->fetch();
	}
	public function edit($id){
		$this->assign('arc',Db::name('mgroup')->where('gid',$id)->find());
		return $this->fetch();
	}
	public function addHandle(){
		if(Db::name('mgroup')->insert(['gname'=>$_POST['gname']])){
			exit(json_encode(['status'=>1,'msg'=>'添加成功']));
		}
	}

	public function editHandle(){
		if(Db::name('mgroup')->where('gid',$_POST['id'])->update(['gname'=>$_POST['gname']])){
			exit(json_encode(['status'=>1,'msg'=>'编辑成功']));
		}
	}

	public function delmgroup(){
		if(Db::name('member')->where('mgroupid',intval($_POST['id']))->find()){
			exit(json_encode(['status'=>0,'msg'=>'本会员组有会员存在']));
		}
		if(Db::name('mgroup')->where('gid',intval($_POST['id']))->delete()){
			exit(json_encode(['status'=>1,'msg'=>'删除成功']));
		}else{
			exit(json_encode(['status'=>0,'msg'=>'删除失败']));
		}
	}
}