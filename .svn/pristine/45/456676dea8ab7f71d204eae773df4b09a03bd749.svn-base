<?php
namespace app\admin\controller;
use app\admin\controller\Basic;
use think\Db;
class Diyform extends Basic{
	public function _initialize(){
		parent::_initialize();
		$this->assign('type','diyform');
	}

	public function index(){
		$formlist = Db::name('diyform')->field('id,name')->select();
		$this->assign('datalist',$formlist);
		$this->assign('modelname',request()->module());
		return $this->fetch();
	}

	public function addform(){
		if(Db::name('diyform')->insert($_POST)){
			exit(json_encode(['status'=>1,'msg'=>'新增成功']));
		}
	}
	public function editform(){
		if(Db::name('diyform')->where('id',$_POST['formid'])->update(['name'=>$_POST['newname']])){
			exit(json_encode(['status'=>1,'msg'=>'编辑成功']));
		}
	}
	public function delform(){
		if(Db::name('diyform')->where('id',$_POST['formid'])->delete()){
			Db::name('formdata')->where('formid',$_POST['formid'])->delete();
			exit(json_encode(['status'=>1,'msg'=>'删除成功']));
		}
	}

	//字段相关
	public function fieldindex($formid){
		$form = Db::name('diyform')->where('id',$formid)->find();
		
		$field = explode('#', $form['field']);
		array_pop($field);
		foreach($field as $k=>$v){
			$datalist[$k] = explode('^', $v);
		}

		$this->assign('formid',$formid);
		$this->assign('datalist',$datalist);
		return $this->fetch();
	}

	public function addfield($formid){
		$this->assign('formid',$formid);
		return $this->fetch();
	}
	public function addhandle(){
		$form = Db::name('diyform')->where('id',intval($_POST['id']))->find();
		$form['field'].= $_POST['comment'].'^'.$_POST['name'].'#';
		if(Db::name('diyform')->where('id',$form['id'])->update(['field'=>$form['field']])){
			exit(json_encode(['status'=>1,'msg'=>'添加成功']));
		}else{
			exit(json_encode(['status'=>0,'msg'=>'添加失败']));
		}
	}

	public function delfield(){
		$form = Db::name('diyform')->where('id',$_POST['formid'])->find();
		$pattern = "/{$_POST['fieldname']}\^[a-z0-9_]+#/";
		
		$form['field'] = preg_replace($pattern, '', $form['field']);
		if(Db::name('diyform')->where('id',$_POST['formid'])->update(['field'=>$form['field']])){
			exit(json_encode(['status'=>1,'msg'=>'删除成功']));
		}

	}

	public function formlist($formid){
		$tmp = Db::name('formdata')->where('formid',$formid)->order('id DESC')->paginate('13');
		$page = $tmp->render();
		$this->assign('pagelist', $page);
		foreach($tmp as $k=>$v){
			$data=json_decode($v['data'],true);
			foreach($data as $name=>$val){
				$tmp2[$k][$name] = $val;
			}
			$tmp2[$k]['id'] = $v['id'];
		}

		$form = Db::name('diyform')->where('id',$formid)->find();
		
		$field = explode('#', $form['field']);
		array_pop($field);
		foreach($field as $k=>$v){
			$fields[$k] = explode('^', $v);
		}

		$this->assign('field',$fields);
		$this->assign('datalist',$tmp2);
		
		


		return $this->fetch();
	}

	public function viewdetail($id){
		
		return $this->fetch();
	}


	public function formctrl(){
		if(request()->isAjax()){
        	$table = 'formdata';
			if(input('?post.del')){
				foreach($_POST['del'] as $k=>$v){
					Db::name($table)->where('id',$v)->delete();
				}
				exit(json_encode(['status'=>1,'msg'=>'操作成功']));
			}else{
				exit(json_encode(['status'=>0,'msg'=>'未勾选数据']));
			}
		}
	}

}