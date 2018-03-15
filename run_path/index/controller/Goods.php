<?php
namespace app\index\controller;
use app\index\controller\Basic;
use think\Db;
use think\Config;
class Goods extends Basic{
	public function _initialize(){
		parent::_initialize();
		$navt = $this->navt;
		$this->goodsorgnav = get_goodsnav('home',$this->lid);
		$this->assign('goodsorgnav',$this->goodsorgnav);
		$this->assign('goodsnavLevel',$navt::getNavList($this->goodsorgnav));
		$this->assign('searchkey','');
	}
	public function index(){
		$this->assign('shownav','yes');
    	return $this->fetch('shop/index');
    }
    public function showlist($navid = 1){
		$navt = $this->navt;
		$navself = $navt::getSelf($this->goodsorgnav,$navid);
		$this->assign('navself',$navself);

		$map['typeid'] = $navself['typeid'];
		$map['issearch'] = 1;
		$spec = Db::name('goodsspec')->field('id,formname')->where($map)->select();
		foreach($spec as $k=>$v){
			$aa[$k]['name'] = $v['formname'];
			$aa[$k]['specid'] = $v['id'];
			$aa[$k]['item'] = Db::name('goodsspecitem')->field('id,specname')->where('specid',$v['id'])->select();
		}
		$this->assign('retrieve',$aa);
			if(input('?param.attr')){
				$spec = searchspec($navself);  //检索类型
				$attrs = explode('&',input('param.attr')); //检索项
				foreach($attrs as $k=>$v){
					list($specid,$itemid)= explode('-', $v);

					if(in_array($specid,$spec)){
						$tj = Db::name('goodsspecitem')->field('specname')->where('id',$itemid)->find();
						$spectj.=$tj['specname'].',';
					}
					if($specid=='brand'){
							$spectj.= 'brand-'.$itemid.',';
							$this->assign('curbrand',$itemid);
					}
				}
				$spectj = substr($spectj,0,-1);
				$this->assign('itemarr',$attrs);
				$this->assign('spectj',$spectj);
			}
		
				
		$brandids = explode(',',$navself['brands']);
		foreach($brandids as $k=>$v){
			$brandlist[$k] = Db::name('brand')->where('id',$v)->find();
		}
		$this->assign('brandlist',$brandlist);
		$this->assign('shownav','no');
		return $this->fetch('shop/list');
	}

	public function detail($navid,$id){
		$navt = $this->navt;
		$navself = $navt::getSelf($this->goodsorgnav,$navid);
		$this->assign('navself',$navself);

		$arc = Db::name('goods')->where('id',$id)->find();
		$this->assign('cont',$arc);
		$specs = Db::name('goodsspec')->field('id,formname')->where('typeid',$arc['goodstype'])->select();
		$skus = Db::name('goodsprice')->field('skukey,id,inventory,price')->where('goodsid',$arc['id'])->select();
		
		$arr = [];
		foreach($skus as $k=>$v){
			$arr = array_merge(explode(';',$v['skukey']),$arr);
		}
		

		foreach($specs as $k=>$v){
			$specs[$k]['item'] = Db::name('goodsspecitem')->where('specid',$v['id'])->select();
		}
		$this->assign('specitems',$arr);
		$this->assign('skulists',json_encode($skus));
		$this->assign('specs',$specs);
		$this->assign('shownav','no');
		return $this->fetch('shop/detail');
		
	}

	public function search(){
		$table = 'goods';
		$key = input('param.key');
		$data = Db::view("$table",'id,navid,title,litpic')
					 ->order("$table.rank")
					 ->where('title','like','%'.$key.'%')
					 ->where("$table.lid",$this->lid)
					 ->where("$table.issale",1)
					 ->paginate(10);
		$pagelist = $data->render();
		$datalist = $data->toArray();
		$this->assign('datalist',$datalist['data']);
		$this->assign('pagelist',$pagelist);
		$this->assign('shownav','no');
		$this->assign('searchkey',$key);
		return $this->fetch('shop/search');
	}
}