<?php
namespace app\index\controller;
use app\index\controller\Basic;
use think\Db;
class Search extends Basic{
	public function _initialize(){parent::_initialize();}
	public function index(){
		$abc = [];
		if(mb_strlen($_GET['key'],"UTF-8")>10){
			$this->assign('info',"您的检索条件有误");
		}else{
			$key = $_GET['key'];
			$model = Db::name('cal')->where('id',$cid)->find();
			$ret1 = get_search('article',LID,$key,9,1);
			$ret2 = get_search('baogao',LID,$key,9,1);
			$ret3 = get_search('product',LID,$key,9,1);
			$datalist = array_merge($ret1['datalist'],$ret2['datalist'],$ret3['datalist']);

			$abc = arr_page($datalist,3);
			$p = !isset($_GET['p']) ? 1 : intval($_GET['p']);
			$page = $p-1;
			$this->assign('datalist',$abc[$page]);
			$this->assign('pagenum',count($abc));
			
		}
		return $this->fetch('search');
	}
}