<?php
namespace app\member\controller;
use app\member\controller\Basic;
use think\Db;
use think\Cookie;
class Order extends Basic{
	public function _initialize(){
		parent::_initialize();
		$this->assign('left','info');
	}
	public function createbefore(){
		if(isset($_POST['skuid']) && isset($_POST['goodsid'])){
			foreach($_POST['skuid'] as $k=>$v){
				if($v!=0){
					$orderlist[$k] = Db::view('goodsprice',['id'=>'skuid','goodsid','price','inventory','skuname'])
								->view('goods','title,litpic',"goodsprice.goodsid = goods.id")
								->where('goodsprice.id',$v)
								->find();
				}else{
					$orderlist[$k] = Db::name('goods')->field(['id'=>'goodsid','title','price','inventory','litpic'])->where('id',$_POST['goodsid'][$k])->find();
					$orderlist[$k]['skuid'] = 0;
					$orderlist[$k]['skuname'] = '';
				}
				//订单数量大于库存时移除本条数据
				if($orderlist[$k]['inventory']>$_POST['ordernum'][$k]){
					$orderlist[$k]['ordernum'] = $_POST['ordernum'][$k];
				}else{
					unset($orderlist);
				}
				$totalpay+= $orderlist[$k]['price'] * $_POST['ordernum'][$k];

				//json
				$orderqueue[$k]['goodsid'] = $orderlist[$k]['goodsid'];
				$orderqueue[$k]['skuid'] = $orderlist[$k]['skuid'];

			}
			
			$this->assign('orderqueue',json_encode($orderqueue));
			$this->assign('orderlist',$orderlist);
			$this->assign('totalpay',$totalpay);
			$this->assign('ctype','cart');
			return $this->fetch();
		}
	}

	public function buynow(){
		$sid = isset($_POST['sid']) ? intval($_POST['sid']) : 0;
		$gid = isset($_POST['gid']) ? intval($_POST['gid']) : 0;
		$num = isset($_POST['subnum']) ? intval($_POST['subnum']) : 0;
		if($sid > 0 && $gid > 0 && $num > 0){		
			$goods = Db::view('goodsprice',['id'=>'skuid','goodsid','price','inventory','skuname'])
					   ->view('goods','title,litpic',"goodsprice.goodsid = goods.id")
					   ->where('goodsprice.id',$sid)
					   ->find();
			if($goods){
				if($goods['inventory'] < $num) exit(json_encode(['status'=>0,'msg'=>'库存不足']));
				$tokenbuy = sha1($this->user['mid'].$sid.$num);
				cookie('tokenbuy',$tokenbuy);
				$param = ['sid'=>$sid,'gid'=>$gid,'num'=>$num,'token'=>$tokenbuy];
				exit(json_encode(['status'=>1,'url'=>url('orderbynow',$param)]));
			}
		}
		exit(json_encode(['status'=>0,'msg'=>'非法操作']));
	}

	public function orderbynow($sid,$gid,$num,$token){
		$sid = intval(input('sid'));
		$gid = intval(input('gid'));
		$num = intval(input('num'));
		$token = input('token');
		if(Cookie::has('tokenbuy') && sha1($this->user['mid'].$sid.$num) == $token && $token == Cookie::get('tokenbuy')){
			//Cookie::delete('tokenbuy');
			$goods = Db::view('goodsprice',['id'=>'skuid','goodsid','price','inventory','skuname'])
					   ->view('goods','title,litpic',"goodsprice.goodsid = goods.id")
					   ->where('goodsprice.id',$sid)
					   ->find();
			if($goods){
				$goods['ordernum'] = $num;
				$goods['totalpay'] = number_format($num * $goods['price'],2);
				$this->assign('orderlist',[$goods]);
				$this->assign('totalpay',$goods['totalpay']);
				$this->assign('ctype','now');

				$orderqueue[1]['goodsid'] = $gid;
				$orderqueue[1]['skuid'] = $sid;
				$this->assign('orderqueue',json_encode($orderqueue));
				return $this->fetch('createbefore');
			}
		}
		
	}

	public function createorder(){
		//订单总表
		$order['status'] = 0;
		$order['ordertime'] = time();
		$order['mid'] = $this->user['id'];
		$order['address'] = $_POST['address'];
		$order['order'] = date('ymdHis',time()).str_pad($this->user['id'], 8, "0", STR_PAD_LEFT);

		foreach($_POST['orderqueue'] as $k=>$v){
			if($_POST['ctype'] != 'now') {
				$map['mid'] = $this->user['id'];
				$map['skuid'] = $v['skuid'];
				$map['goodsid'] = $v['goodsid'];
				$item[$k] = Db::name('shopcart')->where($map)->find();
			}else{
				$item[$k] = Db::view('goodsprice',['id'=>'skuid','goodsid','price','inventory','skuname'])
					   ->view('goods','title,litpic',"goodsprice.goodsid = goods.id")
					   ->where('goodsprice.id',$v['skuid'])
					   ->find();
			}
			
			if($v['skuid']!=0){//存在SKU从goodsprice表取数据
				$where['id'] = $item[$k]['skuid'];
				$tmp = Db::name('goodsprice')->where($where)->find();
				$item[$k]['price'] = $tmp['price'];
			}else{//从goods表取数据
				$where['id'] = $item[$k]['goodsid'];
				$tmp = Db::name('goods')->where($where)->find();
				$item[$k]['price'] = $tmp['price'];
			}
			//应付总额
			$totalpay+= $item[$k]['price'] * $item[$k]['cartnum'];

			$item[$k]['orders'] = $order['order'];
			$item[$k]['address'] = intval($_POST['address']);
			unset($item[$k]['addtime']);
			unset($item[$k]['mid']);
			unset($item[$k]['address']);
			unset($item[$k]['inventory']);
		}
		
		if(Db::name('order')->insert($order)){
			foreach($item as $k=>$v){
				if(Db::name('orderlist')->insert($v)){
					if($_POST['ctype'] != 'now'){
						$map['skuid'] = $v['skuid'];
						$map['goodsid'] = $v['goodsid'];
						Db::name('shopcart')->where($map)->delete();
					}
				}
			}
			exit(json_encode(['status'=>1,'url'=>url('ordershow',['order'=>$order['order']])]));
		}
	}

	//显示去支持界面
	public function ordershow($order){
		$map['orders'] = $order;
		//$map['mid'] = $this->user['id'];
		if(Db::name('orderlist')->where($map)->find()){
			$this->assign('order',$order);
			return $this->fetch();
		}
	}
}