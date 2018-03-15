<?php
namespace app\member\controller;
use think\Controller;
use think\Db;
class Help extends Controller{
	public function _initialize(){
		$this->safe = new \kykkk\Safe(config('safekey'));
        if(config('open_member') == 2 )  $this->redirect('/');
        $this->user = checklogin($this->safe);
		if($this->user && $this->user['status'] == 1) $this->redirect('/member');
    	$this->assign('style','/run_style/member');
        $del['overdue'] = ['lt',time()];
        delete_optimize(config('database.prefix'),'sendcode',$del);
	}
    public function index($t){
        if($t=='l'){
            return $this->fetch('login');
        }
        if($t=='r' && config('open_reg') == 1){
            $this->assign('sendtype',config('sendtype'));
            return $this->fetch('register');
        }
    }
    public function logHandle(){
    	$captcha = new \kykkk\Captcha();
        if(!$captcha->check(input('loginvcode'))){
            exit(json_encode(['status'=>0,'msg'=>'验证码错误','field'=>'loginvcode']));
        };
        $account = $_POST['loginname'];
        //判断帐号类型
        $find['email'] = ['eq',$this->safe->encode($_POST['loginname'])];
        $user = find_encode('member',$find);
        if(is_array($user)){
			$info = json_decode($user['info'],true);
			$user = array_merge($user,$info);
			unset($user['info']);
		}
        $user ? '' : exit(json_encode(['status'=>0,'msg'=>'账号有误','field'=>'loginname']));
        if($user['status']==2){
            exit(json_encode(['status'=>2,'msg'=>'账号被禁用','url'=>'/']));
        }
		$pass = ret_userpass($_POST['loginpass']);
        ($user['pass'] == $pass) ? '' : exit(json_encode(['status'=>0,'msg'=>'密码有误','field'=>'loginpass']));
        $time = time();
        $ip = request()->ip();
        $str = $time.'^'.$ip.'^'.ret_area($ip).',';
        //写入登录信息
        $loginfo = get_logininfo($user['id']);
        if($loginfo){
            $data['info'] = $loginfo['info'].$str;
            Db::name('logininfo')->where('mid',$user['id'])->update($data);
        }else{
            $data['mid'] = $user['id'];
            $data['info'] = $str;
            Db::name('logininfo')->insert($data);
        }
        //保存COOKIE信息
        $issafe = sha1('K#'.$time.$user['regtime'].'.ky');
        cookie('islogin',$this->safe->encode($user['id']));
        cookie('issafe',$issafe);
        
        if($user['status']==0){
            exit(json_encode(['status'=>0,'msg'=>'账号未激活','url'=>url('sendactiveurl')]));
        }
        exit(json_encode(['status'=>1,'msg'=>'登陆成功','url'=>'/member']));
    }
//发送激活邮件
public function sendactiveurl($act = ''){
    if($this->user){
        $this->assign('nickname',$this->user['nickname']);
        if($act == 'geturl'){
$sendhtml =<<<EOF
<div style="border:1px solid #c8cfda;  padding:40px;">
    <p style="margin-top:0;">亲爱的 {$this->user['nickname']} 您好：</p>
    <p>请点击确认激活按钮来激活您的账号</p>
    <div style="margin:35px 0 5px;">
            <a class="domainButton" href="http://obj.com/member_help_setactive_id_{$this->user['id']}_code_{$this->user['email']}">确定激活</a>
    </div>
    <div style="font-size:12px; color:#999; margin-top:3px;">
        点击上方按钮请激活您的账号
    </div>
    <div style="border-top:1px solid #c8cfda; width:270px; padding:0; height:10px; overflow:hidden; font-size:14px; margin:30px 0 0;">
    </div>
    <div style="color:#999; font-size:12px; line-height:2;">
            本通知由信息科技公司发送。如果不是您本人切勿点击激活按钮<br>信息科技公司,专业网站建设、服务器搭建。<br>公司网址：<a href="http://domain.mail.qq.com" target="_blank">www.abc.com</a>
    </div>
</div>
EOF;
            if(sendMail($this->safe->decode($this->user['email']),'用户注册通知',$sendhtml)){
                $this->assign('issend','yes');
            }
        }
        return $this->fetch();
    }
}
//账号激活
public function setactive($code){
    	$where['email'] = ['eq',$code];
        $find = find_noencode('member',$where);
        if($find && $find['status'] == 0){
           if(Db::name('member')->where($where)->update(['status'=>1])){
                $this->redirect('/member');
           }
        }
}
//账号被禁用
public function banlogin(){
    if($this->user) return $this->fetch();
}

    public function regHandle(){
        if(config('open_reg') == 1){
            $nickname = $_POST['nickname'];
            if(config('sendtype') == 'e'){
            	$emailp   = "/^(?:[a-z1-9]{1})(?:[a-z0-9-_]{1,15})@(?:[a-z0-9-_.]{1,8})\.([a-z0-9-_.]{2,3})$/";
            	$email    = $_POST['email'];
            	if(!preg_match($emailp,$email)){
	                exit(json_encode(['status'=>0,'msg'=>'邮箱有误','field'=>'email']));
	            }
	            $account = $this->safe->encode($email);
	            $data['email']    = $this->safe->encode($email);
            }
            if(config('sendtype') == 'p'){
            	$phonep   = "/^[1]{1}[3|4|5|7|8]{1}\d{9}$/";
            	$phone    = $_POST['phone'];
            	if(!preg_match($phonep,$phone)){
	                exit(json_encode(['status'=>0,'msg'=>'手机号有误','field'=>'phone']));
	            }
	            $account = $this->safe->encode($phone);
	            $data['phone']    = $this->safe->encode($phone);
            }

            $pass     = $_POST['regpass'];
            $namelen  = mb_strlen($nickname,"UTF-8");
            $passlen  = mb_strlen($pass,'UTF-8');
            
            if($namelen<2 || $namelen>10){
                exit(json_encode(['status'=>0,'msg'=>'昵称有误','field'=>'nickname']));
            }
            if($passlen < 6 || $passlen > 20){
                exit(json_encode(['status'=>0,'msg'=>'6-19位的密码','field'=>'regpass']));
            }
            if(strlen($_POST['sendcode'])!=6){
                exit(json_encode(['status'=>0,'msg'=>'安全码有误','field'=>'sendcode']));
            }
           
            $map['account'] = ['eq',$account];
            $map['code'] = ['eq',$_POST['sendcode']];
            if(!(Db::name('sendcode')->where($map)->select())){
                exit(json_encode(['status'=>0,'msg'=>'安全码有误','field'=>'sendcode']));
            }
            
            $data['nickname'] = $this->safe->encode($nickname);
            $data['regtime']  = time();
            $data['accounttype'] = '1';
            $data['pass'] = ret_userpass($pass);
            if(Db::name('member')->insert($data)){
            	Db::name('sendcode')->where('account',$account)->delete();
                exit(json_encode(['status'=>1,'msg'=>'注册成功']));
                $del['account'] = ['eq',$account];
                delete_optimize(config('database.prefix'),'sendcode',$del);
            }else{
                exit(json_encode(['status'=>0,'msg'=>'注册失败','field'=>'name']));
            }
        }
    }

    //发送手机或邮箱验证码
  	public function sendcode(){
        $captcha = new \kykkk\Captcha();
        if(!$captcha->check(input('vcode'))){
            exit(json_encode(['status'=>0,'msg'=>'验证码错误','field'=>'vcode']));
        };
        if(config('sendtype') == 'p'){
            $phone    = $_POST['hiddphone'];
            $phonep   = "/^[1]{1}[3|4|5|7|8]{1}\d{9}$/";
            if(!preg_match($phonep,$phone)){
                exit(json_encode(['status'=>2,'msg'=>'手机号有误','field'=>'phone']));
            }
            $where['phone'] = ['eq',$this->safe->encode($phone)];
            $find = find_encode('member',$where);
        }

        if(config('sendtype') == 'e'){
            $email    = $_POST['hiddemail'];
            $emailp   = "/^(?:[a-z1-9]{1})(?:[a-z0-9-_]{1,15})@(?:[a-z0-9-_.]{1,8})\.([a-z0-9-_.]{2,3})$/";
            if(!preg_match($emailp,$email)){
                exit(json_encode(['status'=>2,'msg'=>'邮箱有误','field'=>'phone']));
            }
            $where['email'] = ['eq',$this->safe->encode($email)];
            $find = find_encode('member',$where);
        }
        $field = (config('sendtype') == 'p') ? 'phone' : 'email';
        if($find){
            exit(json_encode(['status'=>2,'msg'=>'此账号已存在','field'=>$field]));
        }

        $code = substr(sha1('K#'.time().'ky'.mt_rand(9999,99999)),5,6);
        $data['code'] = $code;
        $data['overdue'] = time()+120;
        if(config('sendtype')=="e"){
            $account = $this->safe->encode($email);
            $whereb['account'] = ['eq',$account];
            if(find_encode('sendcode',$whereb)){
                exit(json_encode(['status'=>2,'msg'=>'注册码未过期','field'=>'sendcode']));
            }
            $data['account'] = $account;
            $sendhtml =<<<EOF
<div style="border:1px solid #c8cfda;  padding:40px;">
        <p style="margin-top:0;">亲爱的 {$_POST['hidename']} 您好：</p>
        <p>您正在使用 {$email} 邮箱账号在江苏科友信息科技有限公司注册会员：</p>
        <p>第一步复制注册码到系统注册,请勿关闭通知信息</p>
        <p>第二步系统注册成功后,请点击确认激活按钮来激活您的账号</p>
        <table cellspacing="0" cellpadding="3" style="margin:15px 0;">
            <tbody>
                <tr>
                    <td style="font-size:14px;" nowrap="">账户昵称：</td>
                    <td nowrap="" style="font-size:14px;"><strong><a >{$_POST['hidename']}</a></strong></td>
                </tr>
                <tr>
                    <td style="font-size:14px;" nowrap="">注册码：</td>
                    <td nowrap="" style="font-size:14px;"><strong><a href="http://obj.com/member_help_setactive_code_{$account}">{$code}</a></strong></td>
                </tr>
            </tbody>
        </table>
        <div style="margin:35px 0 5px;">
                <a class="domainButton" href="">确定激活</a>
        </div>
        <div style="font-size:12px; color:#999; margin-top:3px;">
            点击上方按钮请确定系统已注册成功
        </div>
        <div style="border-top:1px solid #c8cfda; width:270px; padding:0; height:10px; overflow:hidden; font-size:14px; margin:30px 0 0;">
        </div>
        <div style="color:#999; font-size:12px; line-height:2;">
                本通知由信息科技公司发送。如果不是您本人切勿点击激活按钮<br>信息科技公司,专业网站建设、服务器搭建。<br>公司网址：<a href="http://domain.mail.qq.com" target="_blank">www.abc.com</a>
        </div>
</div>
EOF;

            if(Db::name('sendcode')->insert($data)){
            	if(sendMail($email,'用户注册通知',$sendhtml)){
            		exit(json_encode(['status'=>1,'msg'=>'注册码发送失败']));
            	}
                $del['account'] = ['eq',$account];
                delete_optimize(config('database.prefix'),'sendcode',$del);
                exit(json_encode(['status'=>0,'msg'=>'注册码发送失败']));
            }
        }
        if(config('sendtype')=="p"){
            $account = $this->safe->encode($phone);
            $whereb['phone'] = ['eq',$account];
            if(find_encode('member',$whereb)){
                exit(json_encode(['status'=>2,'msg'=>'注册码未过期','field'=>'sendcode']));
            }
            $data['account'] = $account;
            if(Db::name('sendcode')->insert($data)){
                if(sendsms($phone,$code)){
                    exit(json_encode(['status'=>1]));
                }
                $dela['account'] = ['eq',$account];
                delete_optimize(config('database.prefix'),'sendcode',$dela);
                exit(json_encode(['status'=>0,'msg'=>'校验码发送失败']));
            }
        }  

    }
}
