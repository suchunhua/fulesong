<?php
namespace app\index\controller;
use app\index\controller\Basic;
use think\Db;
class Showlist extends Basic{
	public function _initialize(){parent::_initialize();}
	public function index($navid = 1,$sex = 'y'){
		$navt = $this->navt;
		$navself   = $navt::getSelf($this->orgnav,$navid);
		//路径错误返回首页
		if(!$navself) $this->redirect('/');
		//网站优化信息
		$title = $navself['seotitle'] ? $navself['seotitle'] : $navself['navname'].'_'.$this->cfg['webname'];
		$this->assign('title',$title);
		$this->assign('keywords',$navself['keywords']);
		$this->assign('description',$navself['description']);
		$this->assign('position',$navt::getPosition($this->orgnav,$navid));
		//相关栏目
		$navtop    = ($navself['pid']==0) ? $navself : $navt::getTop($this->orgnav,$navself['pid']);
		$navparent = ($navself['pid']==0) ? $navself : $navt::getSelf($this->orgnav,$navself['pid']);

		if($this->user){
			if($navself['mgroupid']>$this->user['mgroupid']){
				$auth = mgroup_limit($navself['mgroupid']);
				$sf = mgroup_limit($this->user['mgroupid']);
				$navself['content'] = checkauth($auth['gname'],$navself['navname'],$navself['description'],$sf['gname']);
			}
		}else{
			if($navself['mgroupid']>1){
				$group = mgroup_limit('name',$navself['mgroupid']);
				$navself['content'] = checkauth($group['gname'],$navself['navname'],$navself['description'],'游客');
			}
		}
		$this->assign('navtop',$navtop);
		$this->assign('navself',$navself);
		$this->assign('navparent',$navparent);
		if(!empty($navself['jump'])){
			if(strlen($navself['jump'])<3){
				$url = '/category_'.$navself['jump'];
				header("Location:{$url}");
			}else{
				header('Location:'.$navself['jump']);
			}
			die;
		}
		if($navself['cid'] ==6 && in_array($sex, ['y','n'])){
			$this->assign('sex',$sex);
		}else{
			$this->assign('sex',$sex);
		}
		return $this->fetch(substr($navself['tpl'], 0,-4));
	}
}