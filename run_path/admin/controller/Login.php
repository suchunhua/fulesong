<?php
namespace app\admin\controller;
use think\Controller;
use think\Db;
class Login extends Controller{
	public function _initialize(){
        $this->assign('style','/run_style/admin');
	}
    public function index($suffix){
        ($suffix!=config('loginsuffix')) ? $this->redirect('/') : '';
        $this->admin  = islogin(new \kykkk\Safe(config('safekey')));
        $this->admin ? $this->redirect('/admin/index/index') : '';
 		return $this->fetch();
    }

    public function loginHandle(){
        if(request()->isAjax()){
            (config('safecode') == input('scode')) ? '' : exit(json_encode(['status'=>0,'msg'=>'安全码有误','field'=>'scode']));
            $captcha = new \kykkk\Captcha();
            if(!$captcha->check(input('vcode'))){
                exit(json_encode(['status'=>0,'msg'=>'验证码有误','field'=>'vcode']));
            };

            $name = input('post.name');
            $patt = "/^[a-z]{1}[a-z0-9]{4,10}$/i";
            if(!(preg_match($patt , $name))){
                exit(json_encode(['status'=>0,'msg'=>'帐号有误','field'=>'name']));
            }

            $admin = Db::name('admin')->where('admin_name',$name)->find();

            if($admin){
                $pass = input('post.pass');
                $pass = sha1(substr($pass, 1).substr('kykkk', 0,2).substr($pass, 0,1).substr('kykkk', 2));
                if($pass == $admin['admin_pass']){
                    $safe = new \kykkk\Safe(config('safekey'));
                    session('aid', $safe->encode($admin['id']));
                    cookie('Tease_you_play',$safe->encode('haha'));
                    $url = '/'.request()->module().'/index/index';
                    exit(json_encode(['status'=>1,'msg'=>'登录成功','url'=>$url]));
                }else{
                    exit(json_encode(['status'=>0,'msg'=>'密码有误','field'=>'pass']));
                }
            }else{
                exit(json_encode(['status'=>0,'msg'=>'帐号有误','field'=>'name']));
            }
        }     
    }


}

