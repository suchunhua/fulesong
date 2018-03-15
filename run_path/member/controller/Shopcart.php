<?php
namespace app\member\controller;
use app\member\controller\Basic;
use think\Db;
class Shopcart extends Basic{
	public function _initialize(){
		parent::_initialize();
		$this->assign('left','info');
	}
	public function addCart(){
		addcart(intval($_POST['gid']),intval($_POST['sid']),intval($_POST['subnum']),$this->user,'hand');
	}

	public function cartlist(){
		$this->user = checklogin();
		$tmp   = \think\Db::view("shopcart",'*')
					           ->view('goods','cateid,title,price,litpic',"goodscart.goodsid=goods.id")
					           ->where('goodscart.mid',$this->user['id'])
					           ->select();
		foreach($tmp as $k=>$v){
			$sku = Db::name('goodssku')->where('id',$v['skuid'])->find();
			$newarr[$k] = array_merge($v,$sku);
		}
		
		$this->assign('datalist',$newarr);
		return $this->fetch();
	}

	public function changeNum(){
		$where['goodsid'] = array('eq',$_POST['id']);
		$where['sku'] = array('eq',$_POST['sku']);
		$arc   = Db::name("goodssku")->field('inventory,curprice')->where($where)->find();
		if($arc['inventory']<$_POST['num']){
			exit(json_encode(['status'=>0]));
		}else{
			exit(json_encode(['status'=>1]));
		}
	}

	public function removecart($sid,$gid){
		$map['mid'] = $this->user['id'];
		$map['skuid'] = $sid;
		$map['goodsid'] = $gid;
		if(Db::name('shopcart')->where($map)->delete()){
			exit(json_encode(['status'=>1]));
		}else{
			exit(json_encode(['status'=>0]));
		}
	}
}