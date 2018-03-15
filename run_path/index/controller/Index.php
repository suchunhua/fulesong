<?php
namespace app\index\controller;
use app\index\controller\Basic;
use think\Db;
use think\Config;
class Index extends Basic{
	public function _initialize(){
		parent::_initialize();
	}
    public function index($id = 0){
        is_Mobile();
    	$navt = $this->navt;
        $this->assign('isindex','yes');
    	$this->assign('title',$this->cfg['webname']);
       	return $this->fetch();
    }
    public function captcha(){
        $captcha = new \kykkk\Captcha((array)Config::get('captcha'));
        return $captcha->entry();
    }
}
