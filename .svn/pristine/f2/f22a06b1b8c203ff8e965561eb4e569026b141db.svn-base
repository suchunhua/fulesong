<?php
namespace app\admin\controller;
use app\admin\controller\Basic;
use think\Db;
class Nav extends Basic{
    public function _initialize(){
        parent::_initialize();
        $this->assign('left','company');
        $this->assign('act','1');
    }
    private function ky_assign($navid = 0){
            $navt = $this->navt;
            $this->assign('navlevel',$navt::getLevel($this->orgnav));
            
            $this->assign('authlist',get_mgroup());
            $path = ROOT_PATH.'/run_theme/'.get_langpath('admin',$this->lid).'/'.$this->cfg['theme_p'].'/showlist/';
            $this->assign('listtpl',get_tpl($path));
            //是否存在自定义字段
        if($navid>0){
            $this->navself  = $navself   = $navt::getSelf($this->orgnav,$navid);
            $this->navtop   = $navtop    =($navself['pid']==0) ? $navself : $navt::getTop($this->orgnav,$navself['pid']);
            $this->navparent= $navparent =($navself['pid']==0) ? $navself : $navt::getParent($this->orgnav,$navself['pid']);
            $this->navson   = $navson    =$navt::getMulti($navt::getSon($this->orgnav,$navtop['id']),$navtop['id']);
            $this->assign('arc',$navself);
            $this->assign('navson',$navson);
            $this->assign('navtop',$navtop);
            $this->assign('navself',$navself);
            $this->assign('navtopid',$navtop['id']);
        }
    }

    public function index(){ 
        $this->ky_assign();
        return $this->fetch();
    }

    public function add($id = 0){ 
    	$this->ky_assign($id);
    	$this->assign('ueditor',TRUE);
        return $this->fetch();
    }

    
    public function edit($id){
        $this->ky_assign($id);
        $this->assign('ueditor',TRUE);
        return $this->fetch();
    }

    //新增栏目
    public function addHandle(){
        if(request()->isAjax()){
            $data = $_POST;
            $data['lid'] = $this->lid;
            $rid = Db::name('nav')->insertGetId($data);
            if($rid){
                Db::name('nav')->where(['id'=>$rid])->update(['rank'=>$rid]);
                exit(json_encode(['status'=>1,'msg'=>'数据发布成功','url'=>'/admin/nav/index']));
            }else{
                exit(json_encode(['status'=>0,'msg'=>'数据发布失败']));
            }
        }
    }
    //编辑栏目
    public function editHandle(){
        if(request()->isAjax()){
            unset($_POST['editorValue']);
            $navid = input('id');
            $this->ky_assign($navid);
            if($this->navself){
                if($_POST['pid'] == $navid) exit(json_encode(['status'=>0,'msg'=>'所属栏目不能选择自己']));
                //改变栏目模型
                if($this->navself['cal_id'] != input('post.cal_id')){
                    if($this->selfson) exit(json_encode(['status'=>0,'msg'=>'请先删除本类下的子栏目']));
                    if(Db::name($this->navself['table'])->where('navid',$navid)->find()){
                        exit(json_encode(['status'=>0,'msg'=>'请先清空本类下的内容']));
                    }
                }
                //改变栏目等级
                if($this->navself['pid'] != input('post.pid')){
                    if($this->selfson) exit(json_encode(['status'=>0,'msg'=>'请先删除本类下的子栏目']));
                }
               unset($_POST['formtype']);
             
                if(Db::name('nav')->where('id',input('id'))->update($_POST)){
                    exit(json_encode(['status'=>1,'msg'=>'编辑成功','url'=>url('index')]));
                }else{
                    exit(json_encode(['status'=>0,'msg'=>'编辑失败']));
                }
            }else{
                exit(json_encode(['status'=>2,'msg'=>'非法操作']));
            }
        }
    }
    public function setrank(){
        if(request()->isAjax()){
            foreach($_POST['rank'] as $k=>$v){
                Db::name('nav')->update(['rank' =>intval($v) ,'id'=>intval($k)]);
            }
            exit(json_encode(['status'=>1,'msg'=>'操作成功']));
        }
    }
    public function del(){
        if(request()->isAjax()){
            $navt = $this->navt;
            $id = intval($_POST['id']);
            if($navt::getSon($this->orgnav,$id)){
                exit(json_encode(['status'=>0,'msg'=>'含有子栏目']));
            }//判断是否含有子栏目
            $navself = $navt::getSelf($this->orgnav,$id);
            if( $navself['cid'] != 1 && Db::name($navself['table'])->where('navid',$id)->find() ){
                exit(json_encode(['status'=>0,'msg'=>'含有数据内容']));
            }//判断是否含有内容
            if(Db::name('nav')->where('id',$id)->delete()){
                exit(json_encode(['status'=>1,'msg'=>'删除成功']));
            }else{
                exit(json_encode(['status'=>0,'msg'=>'删除失败']));
            }
        }
    }

    
}