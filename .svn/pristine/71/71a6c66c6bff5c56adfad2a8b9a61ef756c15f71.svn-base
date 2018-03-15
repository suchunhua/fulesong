<?php
namespace app\admin\controller;
use app\admin\controller\Basic;
use think\Db;
class Index extends Basic{
	public function _initialize(){
		parent::_initialize();
	}
    public function index(){
        $navt = $this->navt;
        $this->assign('navlevel',$navt::getLevel($this->orgnav));
    	$this->assign('left','cont');

    	return $this->fetch();
    }

    public function change($lid){
    	session('lid',intval($lid));
    	$this->redirect('index');
    }
}
