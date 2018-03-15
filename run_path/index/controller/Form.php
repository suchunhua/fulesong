<?php
namespace app\index\controller;
use app\index\controller\Basic;
class Form extends Basic{
	public function _initialize(){
		parent::_initialize();
	}
	public function submit(){
		
		$insert['formid'] = intval($_POST['formid']);
		unset($_POST['formid']);
		$ret = 0;
		$arc = \think\Db::name('diyform')->where('id',$insert['formid'])->find();
		if($arc){
			$safe = new \kykkk\Safe(config('safekey'));
			$arr = explode('#',$arc['field']);
	        array_pop($arr);
	        foreach ($arr as $key => $value) {
	            $new = explode('^',$value);
	            $fields[] = $new[1];
	        }
	        foreach($_POST as $k=>$v){
	        	if(in_array($k,$fields)){
	        		$data[$k] = $safe->encode($v);
	        	}
	        }
	        $insert['data'] = json_encode($data);
	        $insert['savedate'] = time();
	        $ret = \think\Db::name('formdata')->insert($insert);
		}
		if($ret){
			exit(json_encode(['status'=>1,'msg'=>'留言提交成功']));
		}
		exit(json_encode(['status'=>0,'msg'=>'留言提交失败']));
	}
}