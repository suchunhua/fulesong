<?php
namespace app\index\controller;
use think\Controller;
use think\Db;
use think\Cookie;
use think\Config;
class Basic extends Controller{
	public function _initialize(){
		Config::load(APP_PATH.'field.php');
		$this->safe = new \kykkk\Safe(config('safekey'));
		$this->navt = $navt = new \kykkk\Nav();
		$this->orgnav = get_orgnav('home',LID);
		$this->assign('navt',$navt);
		$this->assign('orgnav',$this->orgnav);

		$cfg = get_config('home',LID);
		unset($cfg['safecode']);
		unset($cfg['safesuffix']);
		unset($cfg['loginpath']);
		$this->cfg = $cfg;
		foreach($cfg as $k=>$v){
			$this->assign($k,$v);
		}

		
		$this->assign('style',STYLE_PATH);
		$this->assign('navlist',$navt::getNavList($this->orgnav));
		

		
		$this->user = checklogin($this->safe);
		if($this->user){
			$this->assign('cartnum',Db::name('shopcart')->where('mid',$this->user['id'])->count());
			$this->assign('carturl','/member_trading_cartlist.html');
			$this->assign('islogin','yes');
			$this->assign('user',$this->user);
			if(Cookie::has('gid') && Cookie::has('sid') && Cookie::has('subnum') && Cookie::has('kt')){
				$gid = intval(Cookie::get('gid'));
				$sid = intval(Cookie::get('sid'));
				$subnum = intval(Cookie::get('subnum'));
				Cookie::delete('gid');
				Cookie::delete('sid');
				Cookie::delete('subnum');
				Cookie::delete('kt');
				if(Cookie::get('gid')=='now'){
					buynow($gid,$sid,$subnum,$this->user,'auto');
				}
				if(Cookie::get('gid')=='add'){
					addcart($gid,$sid,$subnum,$this->user,'auto');
				}
			}
		}else{
			$this->assign('cartnum',0);
			$this->assign('carturl','/cartlist');
			$this->assign('islogin','no');
		}

		$this->assign('isindex','no');
		$this->assign('sex','y');
	}
	
}