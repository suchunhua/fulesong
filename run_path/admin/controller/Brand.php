<?php
namespace app\admin\controller;
use app\admin\controller\Basic;
use think\Db;
class Brand extends Basic{
	public function _initialize(){
		parent::_initialize();
		$this->assign('left','system');
		$this->assign('act','model');
		$this->assign('type','brand');
	}

	public function index(){
		$ret = get_brand();
		$this->assign('datalist',$ret['datalist']);
		$this->assign('pagelist',$ret['pagelist']);
		return $this->fetch();
	}

	public function edit($id){
		$this->assign('arc',Db::name('brand')->where('id',intval($id))->find());
		return $this->fetch();
	}
	public function add(){
		return $this->fetch();
	}
	public function editHandle(){
		if(Db::name('brand')->where('id',$_POST['id'])->update($_POST)){
			exit(json_encode(['status'=>1,'msg'=>'操作成功','url'=>url('index')]));
		}
	}

	public function addHandle(){
		$rid = Db::name('brand')->insertGetId($_POST);
		if($rid){
			Db::name('brand')->where('id',$rid)->update(['rank'=>$rid]);
			exit(json_encode(['status'=>1,'msg'=>'操作成功','url'=>url('index')]));
		}
	}

	public function delbrand(){
		if(Db::name('brand')->where('id',intval($_POST['id']))->delete()){
			exit(json_encode(['status'=>1,'msg'=>'操作成功']));
		}else{
			exit(json_encode(['status'=>0,'msg'=>'操作失败']));
		}
	}

	public function formctrl(){
		foreach($_POST['rank'] as $k=>$v){
			Db::name('brand')->where('id',intval($k))->update(['rank'=>intval($v)]);
		}
		exit(json_encode(['status'=>1,'msg'=>'操作成功']));
	}
}