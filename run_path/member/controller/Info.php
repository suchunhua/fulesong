<?php
namespace app\member\controller;
use app\member\controller\Basic;
use think\Db;
class Info extends Basic{
	public function _initialize(){
		parent::_initialize();
		$this->assign('left','info');
	}
	public function index(){
		$this->assign('act','upinfo');
		return $this->fetch();
	}

	public function upinfo(){
		if(is_ajax()){
			$name = $_POST['nickname'];
			if(mb_strlen($name,'UTF-8') < 2 || mb_strlen($name,'UTF-8') > 10){
				exit(json_encode(['status'=>0,'msg'=>'昵称最少两个字符,最多十个字符','field'=>'nickname']));
			}
			$data['nickname'] = $this->safe->encode($name);
			$data['sex'] = in_array($_POST['sex'],['男','女','保密']) ? $_POST['sex'] : '保密';
			if(Db::name('member')->where('id',$user['id'])->update($_POST)){
				exit(json_encode(['status'=>1,'msg'=>'操作成功']));
			}else{
				exit(json_encode(['status'=>0,'msg'=>'操作失败']));
			}
		}
	}

	public function uppass(){
		if(request()->isAjax()){
			if($this->user['pass'] == ret_userpass($_POST['oldpass'])){
				$data['pass'] = ret_userpass($_POST['newpass']);
				if(Db::name('member')->where('id',$this->user['id'])->update($data)){
					exit(json_encode(['status'=>1,'msg'=>'操作成功']));
				}else{
					exit(json_encode(['status'=>0,'msg'=>'操作失败']));
				}
			}else{
				exit(json_encode(['status'=>0,'msg'=>'原密码错误','field'=>'oldpass']));
			}
		}
		$this->assign('act','uppass');
		return $this->fetch();
	}

	public function upphoto(){
		if(request()->isAjax()){
			$baseimg = $_POST['userphoto'];
			if (preg_match('/^(data:\s*image\/(\w+);base64,)/', $baseimg, $result)){
                $type = $result[2];
                  //保存位置--图片名
                $path = "./uploads/member/";
                $image_name= date('His').str_pad(mt_rand(10000, 99999), 5, '0', STR_PAD_LEFT).".".$type;
                $image_url = $path.$image_name;
                  //解码
                $decode=base64_decode(str_replace($result[1], '', $baseimg));
                if (file_put_contents("$image_url", $decode)){
                    $data['address']  = $this->user['address'];
                    $data['sex']      = $this->user['sex'];
                    $data['photo']    = $this->safe->encode("/uploads/member/".$image_name);
                    $data['nickname'] = $this->user['nickname'];
                    $data['pass']     = $this->user['pass'];
                    if(Db::name('member')->where('id',$this->user['id'])->update(['info'=>json_encode($data)])){
						exit(json_encode(['status'=>1,'msg'=>'操作成功']));
					}else{
						exit(json_encode(['status'=>0,'msg'=>'操作失败']));
					}
                }
        	}
		}
		$this->assign('act','upphoto');
		return $this->fetch();
	}
}