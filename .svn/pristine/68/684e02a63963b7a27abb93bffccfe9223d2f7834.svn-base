<?php
namespace app\member\controller;
use app\member\controller\Basic;
use think\Db;
class Trading extends Basic{
	public function _initialize(){
		parent::_initialize();
		$this->assign('left','trading');
		
	}
	//购物车
	public function cartlist(){
		$datalist = Db::name('shopcart')->where('mid',$this->user['id'])->select();
		$this->assign('datalist',$datalist);
		$this->assign('act','cart');
		return $this->fetch();
	}
	//待付款
	public function nopaylist(){
		$map['mid']  = $this->user['id'];
		$map['status'] = 0;
		$orders = Db::name('order')->where($map)->select();
		foreach($orders as $k=>$v){
			$tmp = Db::name('orderlist')->where('orders',$v['order'])->select();
			$orders[$k]['orderdata'] = $tmp;
		}
		$this->assign('orderlist',$orders);
		$this->assign('act','nopay');
		return $this->fetch();
	}
	//已付款
	public function paylist(){
		$mid = $this->user['id'];
		$map = " mid = $mid AND (status = 1 or status = 2) ";
		$orders = Db::name('order')->where($map)->select();
		foreach($orders as $k=>$v){
			$tmp = Db::name('orderlist')->where('orders',$v['order'])->select();
			$orders[$k]['orderdata'] = $tmp;
		}
		$this->assign('orderlist',$orders);
		$this->assign('act','pay');
		return $this->fetch();
	}
	//已完结
	public function overlist(){
		$map['mid']  = $this->user['id'];
		$map['status'] = 3;
		$orders = Db::name('order')->where($map)->select();
		foreach($orders as $k=>$v){
			$tmp = Db::name('orderlist')->where('orders',$v['order'])->select();
			$orders[$k]['orderdata'] = $tmp;
		}
		$this->assign('orderlist',$orders);
		$this->assign('act','over');
		//p($orders);
		return $this->fetch();
	}
	//退换货/维修
	public function otherlist(){
		$this->assign('act','other');
		return $this->fetch();
	}

	public function delone(){
		$order = $_POST['order'];
		$skuid = $_POST['sid'];
		$map['orders'] = $order;
		$map['skuid']  = $skuid;
		//查询订单下商品总数
		if(Db::name('orderlist')->where('orders',$order)->count('goodsid') > 1){
			if(Db::name('orderlist')->where($map)->delete()){
				exit(json_encode(['status'=>1,'msg'=>'删除成功']));
			}else{
				exit(json_encode(['status'=>0,'msg'=>'删除失败']));
			}
		}else{
			if(Db::name('orderlist')->where($map)->delete()){
				Db::name('order')->where('order',$order)->delete();
				exit(json_encode(['status'=>1,'msg'=>'删除成功']));
			}
		}
	}
}