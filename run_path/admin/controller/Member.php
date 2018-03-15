<?php
namespace app\admin\controller;
use app\admin\controller\Basic;
use think\Db;
class Member extends Basic{
	public function _initialize(){
		parent::_initialize();
		$this->assign('left','member');
		$this->assign('act','member');

	}
	public function index($type='',$val=''){
		switch ($type) {
			case 'e':
				$data = \think\Db::view("member",'*')
					->view('mgroup','gname',"mgroup.gid = member.mgroupid")
					->where('member.email',$val)
					->paginate(1);
				break;
			case 'p':
				$data = \think\Db::view("member",'*')
					->view('mgroup','gname',"mgroup.gid = member.mgroupid")
					->where('member.phone',$val)
					->paginate(1);
				break;
			case 'n':
				$data = \think\Db::view("member",'*')
					->view('mgroup','gname',"mgroup.gid = member.mgroupid")
					->where('member.nickname','like','%'.$val.'%')
					->paginate(13);
				break;
			default:
				$data = \think\Db::view("member",'*')
					->view('mgroup','gname',"mgroup.gid = member.mgroupid")
					->paginate(13);
				break;
		}
		$datalist = $data->toArray();
		$this->assign('pagelist',$data->render());
		$this->assign('datalist',$datalist['data']);
		return $this->fetch();
	}

	public function add(){
		$this->assign('mgrouplist',Db::name('mgroup')->where('gid','gt',1)->select());
		return $this->fetch();
	}

	public function edit($id){
		$this->assign('mgrouplist',Db::name('mgroup')->where('gid','gt',1)->select());
		$arc = \think\Db::view("member",'*')
					    ->where('id',$id)
						->view('mgroup','gname',"mgroup.gid = member.mgroupid")
						->find();
				$this->assign('arc',$arc);
		return $this->fetch();
	}

	public function addHandle(){
		$phone = $_POST['phone'];
		$email = $_POST['email'];
		$pattern = "/^(?:[a-z1-9]{1})(?:[a-z0-9-_]{1,15})@(?:[a-z0-9-_.]{1,8})\.([a-z0-9-_.]{2,3})$/";
		if(!preg_match($pattern, $email)){
			exit(json_encode(['status'=>0,'msg'=>'邮箱有误']));
		}
		$pattern = "/^[1]{1}[3|4|5|7|8]{1}\d{9}$/";
		if(!preg_match($pattern, $phone)){
			exit(json_encode(['status'=>0,'msg'=>'手机格式有误']));
		}
		if(Db::name('member')->where('email',$email)->find()){
			exit(json_encode(['status'=>0,'msg'=>'邮箱已存在']));
		}
		if(Db::name('member')->where('phone',$phone)->find()){
			exit(json_encode(['status'=>0,'msg'=>'手机已存在']));
		}
		if(mb_strlen($_POST['pass']) < 6){
			exit(json_encode(['status'=>0,'msg'=>'密码不合规范']));
		}

		$_POST['pass']	  = ret_userpass($_POST['pass']);
		$_POST['regtime'] = time();

		if(Db::name('member')->insert($_POST)){
			exit(json_encode(['status'=>1,'msg'=>'添加成功','url'=>url('index',['type'=>'index'])]));
		}else{
			exit(json_encode(['status'=>0,'msg'=>'添加失败']));
		}
	}

	public function editHandle(){
		$member = Db::name('member')->where('id',intval($_POST['id']))->find();
		if($member){
			if( mb_strlen($_POST['pass'])>=6 ){
				$_POST['pass'] = ret_userpass($_POST['pass']);
			}else{
				unset($_POST['pass']);
			}
			if(Db::name('member')->where('id',$member['id'])->update($_POST)){
				exit(json_encode(['status'=>1,'msg'=>'编辑成功']));
			}else{
				exit(json_encode(['status'=>0,'msg'=>'编辑失败']));
			}
		}
	}
	//删除会员一切资料
	public function delmember(){
		if(Db::name('member')->where('id',intval($_POST['id']))->delete()){
			//删除会员登陆信息
			Db::name('logininfo')->where('mid',intval($_POST['id']))->delete();
			//查询会员订单
			$order = Db::name('order')->where('mid',intval($_POST['id']))->select();
			if($order){
				foreach($order as $v){
					//删除会员订单详情
					Db::name('orderlist')->where('orders',$order['order'])->delete();
				}
				//删除会员订单
				Db::name('order')->where('mid',intval($_POST['id']))->delete();
			}
			exit(json_encode(['status'=>1,'msg'=>'删除成功']));
		}else{
			exit(json_encode(['status'=>0,'msg'=>'删除失败']));
		}
	}

	//设置会员状态
	public function setstatus(){
		if(Db::name('member')->where('id',intval($_POST['id']))->update(['status'=>intval($_POST['setval'])])){
			exit(json_encode(['status'=>1]));
		}else{
			exit(json_encode(['status'=>0]));
		}
	}



}