<?php
namespace app\admin\controller;
use app\admin\controller\Basic;
use think\Db;
class Lang extends Basic{
	public function _initialize(){
		parent::_initialize();
		$this->assign('act','lang');
		$this->assign('left','system');
	}
	public function index(){
		$this->assign('datalist',Db::name('lang')->select());
		return $this->fetch();
	}

	public function add($id){
		$this->assign('arc',Db::name('cal')->where('id',$id)->find());
		return $this->fetch();
	}

	public function edit($id){
		$this->assign('arc',Db::name('lang')->where('id',$id)->find());
		return $this->fetch();
	}

	public function editHandle($id){
		if($id==1) $_POST['url'] = 'cn';
		if($id==2) $_POST['url'] = 'en';
		if(Db::name('lang')->where(id,$id)->update($_POST)){
			exit(json_encode(['status'=>1,'msg'=>'编辑成功','url'=>url('index')]));
		}else{
			exit(json_encode(['status'=>0,'msg'=>'编辑失败']));
		}
	}

	public function addHandle($id){
		if(Db::name('cal')->where(id,$id)->update(['name'=>input('post.name'),'status'=>input('post.status')])){
			exit(json_encode(['status'=>1,'msg'=>'编辑成功','url'=>url('index')]));
		}else{
			exit(json_encode(['status'=>0,'msg'=>'编辑失败']));
		}
	}
}