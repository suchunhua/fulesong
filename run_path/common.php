<?php
require_once APP_PATH."/encrypt_a.php";
require_once APP_PATH."/encrypt_b.php";
require_once APP_PATH."/encrypt_c.php";
function p($msg){
	echo "<pre>";
		print_r($msg);
	echo "<pre>";
}

function delete_optimize($prefix,$table,$where){
	if(is_array($where)){
		\think\Db::name($table)->where($where)->delete();
    	$tablename =  $prefix.$table;
	}
    \think\Db::query("OPTIMIZE TABLE `".$tablename."`");
}

function find_encode($table,$where){
	if(is_array($where)){
    	$arc = \think\Db::name($table)->where($where)->find();
	}
	return $arc;
}

function find_noencode($table,$where){
	if(is_array($where)){
    	return \think\Db::name($table)->where($where)->find();
	}
}

function clear($path){
    $dh = opendir($path);
    while(($file = readdir($dh)) !== false){
        if($file == '.' || $file == '..') continue;
        if(is_dir($path.'/'.$file)){
            clear($path.'/'.$file);
        } else {
            unlink($path.'/'.$file);
        }
    }
    closedir($dh);

}

/*
* 获取一条会员组信息
* @param $gid	 是	 会员组的id
*/
function mgroup_limit($gid){
	$cache = 'kykkk_mgroup'.$gid;
	if(cache($cache)){
		$arr = cache($cache);
	}else{
		$arr = \think\Db::name('mgroup')->select();
		cache($cache,$arr,604800);
	}
	foreach($arr as $k=>$v){
		if($gid == $v['gid']){
			return $v;
		}
	}
}

/*
* 获取一条内容详情
* @param $table	 是	 数据表
* @param $id	 是	 数据ID
*/
function get_arc($table,$id){
	$cache = 'kykkk_'.$table.'_'.$id;
	if(cache($cache)){
		$arc = cache($cache);
	}else{
		$arc = \think\Db::name($table)->where('id',$id)->find();
		cache($cache,$arc,604800);
	}
	return $arc;
}


function jump($url){
	header("Location: $url");
}
function incone($key){ return $key+1;}           //自增一

//统计表数量
function count_recycle($table,$allid,$status){
	return \think\Db::name($table)->where('status',$status)->count('id');
}

function get_tpl($path){       //获取模板
	$return = [];
	$dir = opendir($path);
	while($file = readdir($dir)){
		if($file != '.' && $file != '..'){
			$return[] = $file;
		}
	}
	closedir($dir);
	return $return;
}

function navHandle($navt,$orgnav,$navid){
	$ret = [];
	$ret['self']  = $self   = $navt::getSelf($orgnav,$navid);
    $ret['top']   = $top    = ($self['pid']==0) ? $self : $navt::getTop($orgnav,$self['pid']);
    $ret['son']   = $son    = $son    = $navt::getSon($orgnav,$top['id']);
    $ret['peers'] = $peers  = $son   = $navt::getMulti($navt::getSon($orgnav,$self['id']),$self['id']);
    $ret['parent']= $parent = ($self['pid']==0) ? $self : $navt::getParent($orgnav,$self['pid']);
    $ret['level'] = $level  = $navt::getLevel($orgnav);
    $ret['allid'] = $navt::getAllId($orgnav,$navid);
    return $ret;
}
//获取内容列表

function get_mgroup(){
	return \think\Db::name('mgroup')->select();
}
function get_lang($type = 'all'){
	return $type === 'all' ? \think\Db::name('lang')->select() : \think\Db::name('lang')->where('status',1)->select();
}


function get_ad($model,$id){
	$cache = "kykkk_ad".$id;
	if(cache($cache) && $model == 'home'){
		$data = cache($cache);
	}else{
		$data = \think\Db::name('plugad')->where('id',$id)->find();
		($model == 'home') ? cache($cache,$data,604800) : '';
	}
	return $data;
}
function get_garclist($id,$lid,$allid,$row,$flag = '',$orderby){
if($flag!=''){
	$cache = "goods{$lid}{$id}{$row}{$flag}{$orderby}";
	if(cache($cache)){
		$data = cache($cache);
	}else{
		$data = \think\Db::name('goods')
			 ->where('navid','in',$allid)
			 ->where('attr','in',$flag)
			 ->where('issale',1)
			 ->limit($row)
			 ->order("$orderby")
			 ->select();
			 cache($cache,$data,3600);
	}
}else{
	$cache = "goods{$lid}{$id}{$row}{$orderby}";
	if(cache($cache)){
		$data = cache($cache);
	}else{
		$data = \think\Db::name('goods')
			 ->where('navid','in',$allid)
			 ->where('issale',1)
			 ->limit($row)
			 ->order("$orderby")
			 ->select();
			 cache($cache,$data,86400);
	}		
}
	return $data;
}
function get_article($lid,$row,$flag = '',$orderby){
	$cache = 'article'.$lid.$row.$flag.$orderby;
	if(cache($cache)){
		return cache($cache);
	}
	if($flag!=''){
		$data = \think\Db::name('article')
					 ->where('attr','like','%'.$flag.'%')
					 ->where('status',1)
					 ->where('lid',$lid)
					 ->limit($row)
					 ->order("$orderby")
					 ->select();
	}else{
		$data = \think\Db::name('article')
			 ->where('status',1)
			 ->where('lid',$lid)
			 ->limit($row)
			 ->order("$orderby")
			 ->select();			
	}
	cache($cache,$data,3600);
	return $data;
}
function arr_page($arr, $line) {
    $new_arr = array();
    for($i = 0, $len = count($arr); $i < $len; ++$i) {
        if(!($i%$line) && $i/$line >= 1) {
            $new_arr[] = $tmp;
            $tmp = array();
        }
        $tmp[] = $arr[$i];
    }
    $new_arr[] = $tmp;
    return $new_arr;                 
}
function get_search($table,$lid,$key,$row,$status){
	$data = \think\Db::view("$table",'*')
					 ->where('title','like','%'.$key.'%')
					 ->where("$table.lid",$lid)
					 ->where("$table.status",$status)
					 ->paginate($row);
	$pagelist = $data->render();
	$datalist = $data->toArray();
	return ['datalist'=>$datalist['data'],'pagelist'=>$pagelist];
}


function get_banner($model,$lid,$platform){
	$cache = "banner".$lid.$platform;
	if(cache($cache) && $model == 'home'){
		$data = cache($cache);
	}else{
		$data = \think\Db::name('plugbanner')->where(['status'=>1,'platform'=>$platform,'lid'=>$lid])->order('rank')->select();
		($model == 'home') ? cache($cache,$data,3600) : '';
	}
	
	return $data;
}

function get_link($model,$lid,$type){
	$cache = "link".$lid.$type;
	if(cache($cache) && $model == 'home'){
		$data = cache($cache);
	}else{
		$data = \think\Db::name('pluglink')->where(['status'=>1,'linktype'=>$type])->order('rank')->select();
		($model == 'home') ? cache($cache,$data,3600) : '';
	}
	
	return $data;
}

function get_brand($model = 'admin',$orderby = 'id asc',$row = '6'){
	if($model == 'admin'){
		$data = \think\Db::view("brand",'*')
					 ->order($orderby)
					 ->paginate($row);
		$pagelist = $data->render();
		$datalist = $data->toArray();
		return ['datalist'=>$datalist['data'],'pagelist'=>$pagelist];
	}else{
		$cache = "mybrand".$row;
		if(cache($cache)){
			$ret = cache($cache);
		}else{
			$data = \think\Db::view("brand",'*')
					 ->order($orderby)
					 ->paginate($row);
			$ret = $data->toArray();
			cache($cache,$ret,3600);
		}
		return $ret['data'];
	}

	
}

//返回图片组
function get_pics($pics){
	$arr = explode('#',$pics);
	array_pop($arr);
	$str = '';
	foreach($arr as $v){
		$str.='<li><img bimg="'.$v.'" src="'.$v.'" onmousemove="preview(this);"></li>';
	}
	return $str;
}
//返回图片组第一张
function get_pics_first($pics){
	$arr = explode('#',$pics);
	return $arr[0];
}

/*格式化字节大小*/
function format_bytes($size, $delimiter = '') {
	$units = array('B', 'KB', 'MB', 'GB', 'TB', 'PB');
	for ($i = 0; $size >= 1024 && $i < 5; $i++) {
		$size /= 1024;
	}
	return round($size, 2) . $delimiter . $units[$i];
}

function sendMail($to,$title,$content){
		\think\Loader::import('kykkk.PHPMail.PHPMailerAutoload');
	    $mail = new \PHPMailer(); //实例化
	    $mail->IsSMTP(); // 启用SMTP
	    $mail->Host       = config('mail_host'); //smtp服务器的名称（这里以QQ邮箱为例）
	    $mail->SMTPAuth   = 1; //启用smtp认证
	    $mail->Username   = config('mail_from'); //你的邮箱名
	    $mail->Password   = config('mail_pass') ; //邮箱密码
	    $mail->From       = config('mail_from'); //发件人地址（也就是你的邮箱地址）
	    $mail->FromName   = config('mail_from'); //发件人姓名
	    $mail->AddAddress($to);
	    $mail->WordWrap   = 50; //设置每行字符长度
	    $mail->IsHTML(true); // 是否HTML格式邮件
	    $mail->CharSet    = 'utf-8'; //设置邮件编码
	    $mail->Subject    = $title; //邮件主题
	    $mail->Body       = $content; //邮件内容
	    $mail->AltBody    = "这是一个纯文本的身体在非营利的HTML电子邮件客户端"; //邮件正文不支持HTML的备用显示
	    return $mail->Send();
}

function sendsms($to,$code){
	\think\Loader::import('kykkk.alisms.TopSdk');
	$appkey = config('smsappkey');
	$secret = config('smssecret');
	$c = new \TopClient;
	$c ->appkey = $appkey ;
	$c ->secretKey = $secret ;
	$c ->format = 'json' ;
	$c ->simplify = true ;
	$req = new AlibabaAliqinFcSmsNumSendRequest;
	$req ->setExtend( "" );
	$req ->setSmsType( "normal" );
	$req ->setSmsFreeSignName( config('smssignature') );//签名
	$req ->setSmsParam( "{code:'{$code}'}" ); //消息
	$req ->setRecNum( $to );//接收手机
	$req ->setSmsTemplateCode( config('smstemplate') );//模板
	$resp = $c ->execute( $req );
	$ret = json_decode( json_encode( $resp),true);
    if(array_key_exists('code', $ret)){
    	return false;
    }else{
    	return true;
    }
}

//通过手机或邮箱获取单个用户
function get_user($type,$account){
	if($type == 'e'){
		return \think\Db::name('member')->where(['email'=>$account])->find();
	}
	if($type == 'p'){
		return \think\Db::name('member')->where(['phone'=>$account])->find();
	}
	return false;
}

function get_sendcode($account){
	return \think\Db::name('sendcode')->where(['account'=>$account])->find();
}


function ret_userpass($password){
	$pass = sha1('K#'.substr($password, 1).'.ky');
	return substr($pass,20,20).substr($password,0,1).substr($pass,0,20).substr($password,-1);
}


function get_logininfo($id){
	return  \think\Db::name('logininfo')->where('mid',$id)->find();
}

function get_memberById($id){
	return  \think\Db::view('member','*')
					->where('id',$id)
					 ->view('mgroup','gname',"member.mgroupid=mgroup.gid")
					 ->find();
}

function ordermoney($order){
	$money = '';
	$res = \think\Db::name('orderlist')->where('orders',$order)->select();
	foreach($res as $k=>$v){
		$money+=$v['price'] * $v['cartnum'];
	}
	return $money;
}

function nickname($arr){
	return $arr['nickname'];
}

function checklogin($safe){
	$return = false;;
	if(isset($_COOKIE['islogin']) && isset($_COOKIE['issafe'])){
		$id = intval($safe->decode($_COOKIE['islogin']));
		$loginfo = get_logininfo($id);
		$tmp = explode(',', $loginfo['info']);
		array_pop($tmp);
		$return = $user = get_memberById($loginfo['mid']);
		$lastinfo = explode('^',end($tmp));
		$time = $lastinfo[0];
		$issafe = sha1('K#'.$time.$user['regtime'].'.ky');
		//伪造cookie,删除并返回首页
		if($_COOKIE['issafe'] != $issafe ){
			clearlogin();
			exit("<script>window.location.href='/';</script>");
		};
	}else{
		clearlogin();
	}
	
	if(is_array($return)){
		$info = json_decode($return['info'],true);
		$return = array_merge($return,$info);
		unset($return['info']);
		foreach($return as $k=>$v){
			if(in_array($k, config('member'))){
				$ret[$k] = $safe->decode($v);
			}else{
				$ret[$k] = $v;
			}
		}
		$return = $ret;
	}
	return $return;
}

function clearlogin(){
	\think\Cookie::delete('islogin');
	\think\Cookie::delete('issafe');
}


function ret_area($ip){
	$url ="http%3A%2F%2Fint.dpool.sina.com.cn%2Fiplookup%2Fiplookup.php%3Fformat%3Djs%26ip%3D".$ip;
	$ch = curl_init();
	curl_setopt($ch, CURLOPT_URL, $url);
	curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
	curl_setopt($ch, CURLOPT_HEADER, 0);
	$output = curl_exec($ch);
	curl_close($ch);
	$pattern = "/{.*}/";
	preg_match($pattern, $output, $match);
	if($match){
		$tmp = json_decode($match[0],true);
		$address = $tmp['country'].$tmp['province'].$tmp['city'];
	}else{
		$address = "未知";
	}
	return $address;
}

/*-------------------商城有关的函数---------------------------*/
function get_goodsnav($model,$lid){
	if(cache("goodsorgnav{$lid}") && $model == 'home'){
		$goodsorgnav = cache("goodsorgnav{$lid}");
	}else{
		$goodsorgnav = \think\Db::view("goodsnav",'*')
					->order("rank ASC")
					->select();
		($model == 'home') ? cache("goodsorgnav{$lid}",$goodsorgnav,86400) : '';
	}
	return $goodsorgnav;
}

function retspec($arr){
	foreach($arr as $v){
		if(preg_match("/brand-(\d)+/",$v,$match)){
			$str.="`bid` = ".$match[1]." AND ";
			continue;
		}
		$str.="`skuname` LIKE '%{$v}%'".' AND ';
	}
	return substr($str, 0,-5);
}

function get_goodslist($model,$lid,$allid,$row,$orderby,$status = 1,$page = 1,$spectj =''){
	$table = "goods";

	if(mb_strlen($spectj,'UTF-8')>0){
		$spec = explode(',', $spectj);
		$data = think\Db::view("$table",'*')
					->view('goodsnav','navname',"goodsnav.id=$table.navid")
					->view('goodsprice','skuname',"goodsprice.goodsid=$table.id")
					->order("$table.$orderby")
					->where(retspec($spec))
					->where("navid IN($allid)")
					->where("$table.issale",1)
					->where("$table.lid",$lid)
					->where("$table.issale",$status)
					->group('goodsprice.goodsid')
					->paginate($row,true);
					
		$pagelist = $data->render();
		$datalist = $data->toArray();
		
		return ['datalist'=>$datalist['data'],'pagelist'=>$pagelist];
	}
	
	$cache = "list_{$table}_{$allid}_{$lid}_{$page}";
	if(cache($cache) && $model == 'home'){
		$data = cache($cache);
	}else{
		$data = \think\Db::view("$table",'*')
					->view('goodsnav','navname',"goodsnav.id=$table.navid")
					->order("$table.$orderby")
					->where("navid IN($allid)")
					->where("$table.lid",$lid)
					->where("$table.issale",$status)
					->paginate($row);

		($model == 'home') ? cache($cache,$data,3600) : '';
	}
	$pagelist = $data->render();
	$datalist = $data->toArray();

	return ['datalist'=>$datalist['data'],'pagelist'=>$pagelist];
}

function get_goodstype(){ return \think\Db::name('goodstype')->select();}



//单个商品价格总计
function subprice($arc){
	if($arc['skuid']){
		$ret = \think\Db::name('goodsprice')->field('price')->where('id',$arc['skuid'])->find();
	}else{
		$ret = \think\Db::name('goods')->field('price')->where('id',$arc['goodsid'])->find();
	}
	return $ret['price']*$arc['cartnum'];
}

//订单列表页 价格小计
function minprice($arc){
	return $arc['cartnum']*$arc['price'];
}


function payname($id){
	$ret = \think\Db::name('paytype')->field('name')->where('id',$id)->find();
	return $ret['name'];
}

function sendname($sendtype){
	$ret = \think\Db::name('orderdelivery')->field('sendname')->where('id',$sendtype)->find();
	return $ret['sendname'];
}

function aa($url,$key,$val){
	$pattern = "/{$key}-{$val}/";
	$ret = preg_replace($pattern, "",$url);
	return $ret.$key.'-'.$val;
}

function checkselect($arr,$parama,$paramb){
	if(is_array($arr)){
		if(in_array($parama.'-'.$paramb, $arr)) return 'kyselected';
	}
}



function get_custom($model,$lid,$type,$row,$order){
	if($model =="home"){
		$map['genre'] = ['eq',$type];
		$map['lid']   = ['eq',$lid];
		$data = \think\Db::view('custom','*')->where($map)->order($order)->paginate($row);
	}else{
		
	}
	$pagelist = $data->render();
	$datalist = $data->toArray();
	return ['datalist'=>$datalist['data'],'pagelist'=>$pagelist];
}
function isajax(){ return request()->isAjax();}