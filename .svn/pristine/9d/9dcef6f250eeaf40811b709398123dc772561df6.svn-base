<?php
namespace app\admin\controller;
use app\admin\controller\Basic;
use think\Db;
class Model extends Basic{
	public function _initialize(){
		parent::_initialize();
		$this->assign('left','system');
		$this->assign('act','model');
	}

	public function index(){
		return $this->fetch();
	}

	public function edit($id){
		$model  = Db::name('cal')->where('id',intval($id))->find();
		$tmp = explode('#',$model['addfield']);
		$pattern = "/<field:([a-z0-9_]+)\stype='([a-z]+)'\scomment='(.*)' def='(.*)'><\/field:\\1>/";
		preg_match_all($pattern, $model['addfield'], $match);
		$fieldnum = count($match[0]);
		for($i=0;$i<$fieldnum;$i++){
			$fieldlist[$i]['field'] = $match[1][$i];
			$fieldlist[$i]['type'] = $match[2][$i];
			$fieldlist[$i]['comment'] = $match[3][$i];
			$fieldlist[$i]['def'] = $match[4][$i];
		}
		
		$this->assign('fieldlist',$fieldlist);
		$this->assign('arc',$model);
		$this->assign('modelid',$id);
		return $this->fetch();
	}


	public function changename(){
		if(mb_strlen($_POST['name'],'UTF-8')>10 || mb_strlen($_POST['name'],'UTF-8')<2){
			exit(json_encode(['status'=>0,'msg'=>'频道名称2-10位之间']));
		}
		if(Db::name('cal')->where('id',$_POST['id'])->update(['name'=>$_POST['name']])){
			exit(json_encode(['status'=>1,'msg'=>'修改成功','url'=>url('index')]));
		}else{
			exit(json_encode(['status'=>0,'msg'=>'重命名失败']));
		}
	}



	//以下是新增字段功能
	public function addfield($id){
		$this->assign('id',$id);
		return $this->fetch();
	}

	public function addfieldHandle(){
		$model = Db::name('cal')->where('id',intval($_POST['id']))->find();
		if($model){
			$table = config('dbprefix').$model['table'];
			$sql = "ALTER TABLE  `{$table}` ADD  ";
			$ret= get_sql($_POST);
			$sql.=$ret['sql'];
			$model['addfield'].= $ret['info']; 
			if(is_numeric(Db::execute($sql))){
				if(Db::name('cal')->where('id',$model['id'])->update(['addfield'=>$model['addfield']])){
					exit(json_encode(['status'=>1,'msg'=>'新增成功']));
				}else{
					Db::execute("ALTER TABLE `{$table}` DROP `{$_POST['fname']}`");
				}
			}
		}

		
		
	}


	public function delfield(){
		$model = Db::name('cal')->where('id',intval($_POST['modelid']))->find();
		$table = config('dbprefix').$model['table'];
		$field = $_POST['field'];
		if($model){
			$pattern = "/<field:{$field}.*{$field}>/";
			preg_match($pattern,$model['addfield'],$match);
			if($match){
				$str = str_ireplace($match[0],'',$model['addfield']);
				$del = Db::execute("ALTER TABLE `{$table}` DROP `{$field}`");
			}
			if(is_numeric($del)){
				Db::name('cal')->where('id',$model['id'])->update(['addfield'=>$str]);
				exit(json_encode(['status'=>1,'msg'=>'删除成功']));
			}
		}
	}

	function setstatus(){
		if(Db::name('nav')->where('cid',intval($_POST['id']))->find()){
			exit(json_encode(['status'=>0,'msg'=>'本模型含有栏目,不能禁用']));
		}
		if(Db::name('cal')->where('id',intval($_POST['id']))->update(['status'=>intval($_POST['setval'])])){
			exit(json_encode(['status'=>1]));
		}else{
			exit(json_encode(['status'=>0,'msg'=>'设置失败']));
		}
	}
}