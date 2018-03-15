<?php
namespace app\member\controller;
use app\member\controller\Basic;
use think\request;
use think\Db;
class Address extends Basic{
	public function _initialize(){
		parent::_initialize();
		$this->assign('left','info');
	}
	public function index(){
		$this->assign('act','upinfo');
		$datalist = Db::name('maddress')->where('mid',$this->user['id'])->select();
		$this->assign('datalist',$datalist);
		if($datalist){
			$total = 10 - count($datalist);
			$str = '您已创建 <b style="color:#f00">'.count($datalist);
			$str.= '</b> 个收货地址,最多还可创建 <b style="color:#f00">'.$total.'</b> 个. ';
			if(count($datalist) < 10){
			$str.= '<a href="javascript:void(0)" id="createaddress">创建</a>';
			}
			$this->assign('warning',$str);
		}else{
			$this->assign('warning','还没有收货地址. <a href="javascript:void(0)" id="createaddress">立即创建</a>');
		}
		return $this->fetch();
	}

	public function addaddress(){
		return $this->fetch('add');
	}

	public function edit($id){
		$arc = Db::name('maddress')->where('id',intval($id))->find();
		$this->assign('arc',$arc);
		return $this->fetch('edit');
	}

	public function addHandle(){
		in_array($_POST['ctrltype'],['add','edit']) ? '' : exit(json_encode(['status'=>0,'msg'=>'非法操作']));
		if(mb_strlen($_POST['getphone'],'UTF-8')>0){
			$phone = "/^[1]{1}[3|4|5|7|8]{1}\d{9}$/";
			if(!preg_match($phone,$_POST['getphone'])){
				exit(json_encode(['status'=>0,'msg'=>'手机号有误']));
			}
		}
		if(mb_strlen($_POST['gettel'],'UTF-8')>0){
			$tel = "/^(0[0-9]{2,4}\-)?(\d{6,8})+(\-[0-9]{1,4})?$/";
			if(!preg_match($tel,$_POST['gettel'])){
				exit(json_encode(['status'=>0,'msg'=>'固话格式:0512-12345678-1234']));
			}
		}
		if(mb_strlen($_POST['getphone'],'UTF-8')==0 && mb_strlen($_POST['gettel'],'UTF-8')==0){
			exit(json_encode(['status'=>0,'msg'=>'手机或固话至少填写一项']));
		}
		if(mb_strlen($_POST['getname'],'UTF-8')>7){
			exit(json_encode(['status'=>0,'msg'=>'收货人姓名最多七个字符']));
		}
		if(mb_strlen($_POST['getaddress'],'UTF-8')>60 || mb_strlen($_POST['getaddress'],'UTF-8')<10){
			exit(json_encode(['status'=>0,'msg'=>'检查您的收货地址信息']));
		}

		$data['mid']  		= $this->user['id'];
		$data['getname']  	= $_POST['getname'];
		$data['getphone'] 	= $_POST['getphone'];
		$data['gettel']  	= $_POST['gettel'];
		$data['getaddress'] = strip_tags(htmlspecialchars($_POST['getaddress']));
		$data['getaddress'] = str_replace( '/', "", $data['getaddress']);
		$data['getaddress'] = str_replace("\\", "", $data['getaddress']);
		$data['getaddress'] = str_replace("&gt", "", $data['getaddress']);
		$data['getaddress'] = str_replace("&lt", "", $data['getaddress']);
		$data['getaddress'] =str_replace("select","select",$data['getaddress']);
		$data['getaddress'] =str_replace("union","union",$data['getaddress']);
		$data['getaddress'] =str_replace("insert","insert",$data['getaddress']);
		$data['getaddress'] =str_replace(" ",chr(32),$data['getaddress']);
		$data['getaddress'] =str_replace(" ",chr(9),$data['getaddress']);
		$data['getaddress'] =str_replace("    ",chr(9),$data['getaddress']);
		
		if($_POST['ctrltype']=='add'){
			if(Db::name('maddress')->where('mid',$this->user['id'])->count('id')>10){
				exit(json_encode(['status'=>0]));
			}
			if(Db::name('maddress')->insert($data)){
				exit(json_encode(['status'=>1,'msg'=>'操作成功']));
			}else{
				exit(json_encode(['status'=>0,'msg'=>'操作失败']));
			}
		}else{
			$where['mid'] = $this->user['id'];
			$where['id'] = intval($_POST['id']);
			if(Db::name('maddress')->where($where)->update($data)){
				exit(json_encode(['status'=>1,'msg'=>'操作成功']));
			}else{
				exit(json_encode(['status'=>0,'msg'=>'操作失败']));
			}
		}
	}

	function del(){
		$where['mid'] = $this->user['id'];
		$where['id'] = intval($_POST['delid']);
		if(Db::name('maddress')->where($where)->delete()){
			exit(json_encode(['status'=>1,'msg'=>'操作成功']));
		}else{
			exit(json_encode(['status'=>0,'msg'=>'操作失败']));
		}
	}


}