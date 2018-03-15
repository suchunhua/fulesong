<?php
namespace app\index\controller;
use app\index\controller\Basic;
use think\Db;
class Detail extends Basic{
	public function _initialize(){
		parent::_initialize();
	}
	public function index($navid,$id,$sex = 'y'){
		$navt = $this->navt;
		$navself   = $navt::getSelf($this->orgnav,$navid);
		//路径错误返回首页
		if(!$navself) $this->redirect('/');
		//相关栏目
		$navtop    = ($navself['pid']==0) ? $navself : $navt::getTop($this->orgnav,$navself['pid']);
		$navparent = ($navself['pid']==0) ? $navself : $navt::getSelf($this->orgnav,$navself['pid']);
		$this->assign('navtop',$navtop);
		$this->assign('navself',$navself);
		$this->assign('navparent',$navparent);
		$this->assign('position',$navt::getPosition($this->orgnav,$navid));
		//内容详情
		$arc = get_arc($navself['table'],intval($id));
		
		if($this->user){
			if($arc['mgroupid']>$this->user['mgroupid']){
				$auth = Db::name('mgroup')->field('gname')->where('gid',$arc['mgroupid'])->find();
				$sf = Db::name('mgroup')->field('gname')->where('gid',$this->user['mgroupid'])->find();
				$arc['body'] = checkauth($auth['gname'],$arc['title'],$arc['description'],$sf['gname']);
			}
		}else{
			if($arc['mgroupid']>1){
				$auth = Db::name('mgroup')->field('gname')->where('gid',$arc['mgroupid'])->find();
				$arc['body'] = checkauth($auth['gname'],$arc['title'],$arc['description'],'游客');
			}
		}
		$this->assign('cont',$arc);
		$this->assign('title',$arc['title']);
		$this->assign('keywords',$arc['keywords']);
		$this->assign('description',$arc['description']);
		if($arc['status']==0) $this->redirect('/');
		if($navself['cid'] ==6 && in_array($sex, ['y','n'])){
			$this->assign('sex',$sex);
		}else{
			$this->assign('sex',$sex);
		}
		return $this->fetch(substr($arc['tpl'], 0,-4));
	}

	

	public function click($navid,$id){
		$navt = $this->navt;
		$navself   = $navt::getSelf($this->orgnav,$navid);
		Db::name($navself['table'])->where('id', $id)->setInc('click');
		$ret = Db::name($navself['table'])->field('click')->where('id', $id)->find();
        echo  "document.write('".$ret['click']."');";
	}
}