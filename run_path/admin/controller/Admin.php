<?php
namespace app\admin\controller;
use app\admin\controller\Basic;
use think\Db;
class Admin extends Basic{
	public function _initialize(){
		parent::_initialize();
		$this->assign('left','system');
	}
	public function index(){
		if($this->admin['auth_group_id'] ==1){
			$this->assign('datalist',get_admin());
		}else{
			$this->assign('datalist',get_admin($this->admin['id']));
		}
		$this->assign('act','admin');
		return $this->fetch();
	}
	public function add(){
		$this->assign('grouplist',Db::name('auth_group')->where('status',1)->select());
		$this->assign('act','admin');
		return $this->fetch();
	}
	public function edit($id){
		$this->assign('arc',Db::name('admin')->where('id',intval($id))->find());
		$this->assign('group',Db::name('auth_group')->select());
		$this->assign('cjgl',$this->admin['auth_group_id']);
		$this->assign('act','admin');
		return $this->fetch();
	}
	public function del(){
		if($_POST['delid']==1){
			exit(json_encode(['status'=>0,'msg'=>'此账号禁止删除']));
		}
		if(Db::name('admin')->where('id',intval($_POST['delid']))->delete()){
			exit(json_encode(['status'=>1,'msg'=>$this->info['success']]));
		}
		exit(json_encode(['status'=>0,'msg'=>$this->info['error']]));
	}

	public function addHandle(){
		$data['auth_group_id'] = intval($_POST['auth_group_id']);
		$data['admin_name'] = $_POST['admin_name'];
		$data['admin_pass'] = sha1(substr($_POST['admin_pass'], 1).substr('kykkk', 0,2).substr($_POST['admin_pass'], 0,1).substr('kykkk', 2));
		$data['admin_status'] = $_POST['admin_status'];
		if(Db::name('admin')->insert($data)){
			exit(json_encode(['status'=>1,'msg'=>'操作成功','url'=>url('index')]));
		}
	}
	public function editHadnle(){
		if($this->admin['auth_group_id']==1){
			$id = intval($_POST['id']);
		}else{
			$id = session('aid');
		}
		$data['auth_group_id'] = intval($_POST['auth_group_id']);
		if(mb_strlen($_POST['pass'],'UTF-8')>5){
		$data['admin_pass'] = sha1(substr($_POST['pass'], 1).substr('kykkk', 0,2).substr($_POST['pass'], 0,1).substr('kykkk', 2));
		}
		
		$data['admin_status'] = $_POST['admin_status'];
		if(Db::name('admin')->where('id',$id)->update($data)){
			exit(json_encode(['status'=>1,'msg'=>'操作成功','url'=>url('index')]));
		}
		exit(json_encode(['status'=>1,'msg'=>'操作成功','url'=>url('index')]));
	}


	public function group(){
		$this->assign('datalist',Db::name('auth_group')->select());
		$this->assign('act','authgroup');
		return $this->fetch();
	}
	public function addgroup(){
		return $this->fetch();
	}
	public function addgroupHandle(){
		if(Db::name('auth_group')->insert($_POST)){
			exit(json_encode(['status'=>1,'msg'=>'操作成功']));
		}
		exit(json_encode(['status'=>0,'msg'=>'操作失败']));
	}
	public function editgroup($id){
		$arc = Db::name('auth_group')->where('id',intval($id))->find();
		$this->assign('arc',$arc);
		return $this->fetch();
	}
	public function editgroupHandle(){
		if(Db::name('auth_group')->where('id',intval($_POST['id']))->update($_POST)){
			exit(json_encode(['status'=>1,'msg'=>'操作成功']));
		}
		exit(json_encode(['status'=>0,'msg'=>'操作失败']));
	}
	public function groupassign($id){
		$orglist = Db::name('auth_rule')->select();
		$navt = $this->navt;
		$datalist = $navt::getMulti($orglist);
		$this->assign('datalist',$datalist);
		$this->assign('id',$id);
		$arr = Db::name('auth_group')->field('rules')->where('id',$id)->find();
		
		$this->assign('rulearr',explode(',',$arr['rules']));
		$this->assign('act','authgroup');
		return $this->fetch();
	}

	public function assignHandle(){
		if(Db::name('auth_group')->where('id',intval($_POST['id']))->update(['rules'=>implode(',',$_POST['rules'])])){
			exit(json_encode(['status'=>1,'msg'=>'操作成功']));
		}else{
			exit(json_encode(['status'=>0,'msg'=>'操作失败']));
		}
	}

	public function delgroup(){
		$id = intval($_POST['delid']);
		if($id==1){
			exit(json_encode(['status'=>0,'msg'=>'超管组禁止删除']));
		}
		if(Db::name('admin')->where('auth_group_id',$id)->find()){
			exit(json_encode(['status'=>0,'msg'=>'本组有管理员']));
		}
		if(Db::name('auth_group')->where('id',$id)->delete()){
			exit(json_encode(['status'=>1,'msg'=>'操作成功']));
		}
		exit(json_encode(['status'=>0,'msg'=>'操作失败']));
	}
}