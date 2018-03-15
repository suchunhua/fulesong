<?php
namespace app\admin\controller;
use app\admin\controller\Basic;
use think\Db;
class Plug extends Basic{
    public function _initialize(){ 
        parent::_initialize();
        $this->assign('left','plug');
    }
    public function index($type){
    	$this->assign('type',$type);
        $datalist = Db::name($type)->where('lid',$this->lid)->order('rank')->paginate(13);
        $pagelist = $datalist->render();
        $this->assign('datalist',$datalist);
        $this->assign('pagelist',$pagelist);
    	return $this->fetch('index_'.$type);
    }
    public function add($type){
    	$this->assign('type',$type);
    	return $this->fetch('add_'.$type);
    }
    public function edit($type,$id){
     	$this->assign('type',$type);
        $arc = Db::name($type)->where('id',$id)->find();
        $this->assign('arc',$arc);
      	return $this->fetch('edit_'.$type);
    }

   

    public function addHandle(){
        $table = input('type');
        $_POST['lid'] = $this->lid;
        unset($_POST['type']);
        unset($_POST['editorValue']);
       if(Db::name($table)->insert($_POST)){
            exit(json_encode(['status'=>1,'msg'=>'数据添加成功','url'=>url('index',['type'=>$table])]));
       }else{
            exit(json_encode(['status'=>0,'msg'=>'数据添加失败']));
       }
    }

    public function editHandle(){
        $table = input('type');
        unset($_POST['type']);
        unset($_POST['editorValue']);
       if(Db::name($table)->where('id',$_POST['id'])->update($_POST)){
            exit(json_encode(['status'=>1,'msg'=>'数据修改成功','url'=>url('index',['type'=>$table])]));
       }else{
            exit(json_encode(['status'=>0,'msg'=>'数据修改失败']));
       }
    }

    public function del(){
        $delid = intval($_POST['id']);
        $table = $_POST['table'];
        if(in_array($table,['plugad','pluglink','plugbanner'])){
            if(Db::name($table)->where('id',$delid)->delete()){
                exit(json_encode(['status'=>1,'msg'=>'删除成功']));
            }
        }
        exit(json_encode(['status'=>0,'msg'=>'非法操作']));
    }
    public function formctrl(){
        if(request()->isAjax()){
            $table = $_POST['table'];
                foreach($_POST['rank'] as $k=>$v){
                    Db::name($table)->update(['rank' =>intval($v) ,'id'=>intval($k)]);
                }
                exit(json_encode(['status'=>1,'msg'=>'操作成功']));
           
        }
    }
}