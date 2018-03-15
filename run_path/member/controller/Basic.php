<?php
namespace app\member\controller;
use think\Controller;
use think\Db;
use think\Cookie;
use think\Config;
class Basic extends Controller{
	public function _initialize(){
		Config::load(APP_PATH.'field.php');
		$this->safe = new \kykkk\Safe(config('safekey'));
		$this->user = checklogin($this->safe);
		if(!$this->user){
			$this->redirect('/login');
		}
		if($this->user['status'] == 0) $this->redirect('/member/help/sendactiveurl');
		if($this->user['status'] == 2) $this->redirect('/member/help/banlogin');
		
		

		$lid = get_lid();
		$navt = new \kykkk\Nav();
		$orgnav = get_orgnav('home',$lid);
		$cfg = get_config('home',$lid);
		$this->assign('user',$this->user);
		$this->assign('style',"/run_style/admin");
		$this->assign('member_style',"/run_style/member");
		
		$this->assign('webname',$cfg['webname']);
		$this->assign('navlist',$navt::getNavList($orgnav));
		$this->assign('cfg',$cfg);
		$this->assign('safe',$this->safe);
		$this->assign('left','info');
	}
}