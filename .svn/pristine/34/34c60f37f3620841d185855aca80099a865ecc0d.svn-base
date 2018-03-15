<?php
namespace app\member\controller;
use app\member\controller\Basic;
use think\Db;
class Index extends Basic{
	public function _initialize(){
		parent::_initialize();
	}
	public function index(){
		$tmp = get_logininfo($this->user['id']);
		$arr = explode(',', $tmp['info']);
		array_pop($arr);
		foreach($arr as $k=>$v){
			$loginlist[$k]=explode('^',$v);
		}
		$this->assign('loginlist',array_reverse($loginlist));

		
		return $this->fetch();
	}


	

	public function out(){
		clearlogin();
		$this->redirect('/');
	}
}