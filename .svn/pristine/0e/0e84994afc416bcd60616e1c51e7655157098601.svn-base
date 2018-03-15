<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>登录界面</title>
	<link rel="stylesheet" href="{$style}/css/style.css">
</head>
<body>

	<div class="form_group">
		
		<div class="bd">
			<div class="item">
				<form action="{:url('logHandle')}" method="post" id="loginform">
					<input type="hidden" name="atype" value="alogin">
					<div class="input_group">
						<input type="text" class="input w100" name="loginname" id="loginname" placeholder="手机号/邮箱/会员名">
					</div>
					<div class="input_group">
						<input type="text" class="input w100" name="loginpass" id="loginpass" placeholder="登陆密码">
					</div>
					<div class="input_group">
						<input type="text" class="input w50 fl" name="loginvcode" id="loginvcode">
						<img src="/index/index/captcha" class="w50 fl vcode" height="35">
					</div>
					<div class="input_group text-center">
						<input type="submit" value="立即登录" class="dlBtn">
						<button type="button" class="dlBtn reloadimg">刷新验证码</button>
					</div>
				</form>
			</div>
			
		</div>
	</div>

<form action="/member/logreg/sendcode" id="captchaform" method="post" style="display: none">
	<input type="hidden" name="client" value="" id="client">
	<div class="input_group hidecode">
		<input type="text" class="input w50 fl" name="vcode" id="vcode" placeholder="请输入验证码">
		<img src="/index/index/captcha" class="w40 vcode2" height="35">
	</div>
	<div class="input_group text-center hiddsub">
		<input type="submit" value="确定" class="dlBtn">
		<button type="button" class="dlBtn reloadimg2">刷新验证码</button>
	</div>
</form>
<div class="closethis"><img src="{$style}/images/close.png" alt="关闭"></div>
</body>
<script type="text/javascript" src="_PLUG_/js/jquery1.min.js"></script>
<script type="text/javascript" src="{$style}/js/jquery.SuperSlide.2.1.1.js"></script>
<script src="_PLUG_/js/jquery.form.js"></script>
<script src="_PLUG_/js/layer.js"></script>


<script>

var phonereg = /^1[34578]\d{9}$/;
var emailreg = /^[a-z0-9]+([._\\-]*[a-z0-9])*@([a-z0-9]+[-a-z0-9]*[a-z0-9]+.){1,63}[a-z0-9]+$/;

	$(".form_group").slide({
		trigger:"click"
	});
	$('.hqyzm').click(function(){
		var regname = $('#regname').val();
		if(regname == ''){
			layer.tips('必填','#regname',{tips:3});
		}
		if(phonereg.test(regname)){
			$('#captchaform').show();
			$('.closethis').show();
			$('#client').val(regname);
		}
		if(emailreg.test(regname)){
			$('#captchaform').show();
			$('.closethis').show();
			$('#client').val(regname);
		}
	});
	$('.closethis').click(function(){
		$('#captchaform').hide();
		$(this).hide();
	});
	var parent_height = $('.iframe', parent.document).height();
	$('.form_group').css({height:parent_height+'px'});


	$('#captchaform').ajaxForm({
		success : sendok,
		dataType : 'json'
	});
	function sendok(data){
		if(data.status==1){
			$('#captchaform').hide();
			$('.closethis').hide();
			$('.sendbtn').attr("disabled","disabled").addClass('sendok');
			djs();
		}
		if(data.status==0){
			layer.tips(data.msg,'#vcode');
		}
	}
	function djs() {
		var times = 50 * 100; // 120秒
		countTime = setInterval(function() {
			times = --times < 0 ? 0 : times;
			var ms = Math.floor(times / 100).toString();
			if(ms.length <= 1) {
				ms = "0" + ms;
			}
			$(".sendbtn").html(ms+'秒后获取');
			if(times == 0) {
				$('.sendbtn').html('获取校验码').removeClass('sendok').removeAttr('disabled');
				clearInterval(countTime);
			}
		}, 10);
	}
</script>
</html>


<script>
	$('#regform').ajaxForm({
		
		success  : regsuccess,
		dataType : 'json'
	});

	$('#loginform').ajaxForm({
		success  : loginsuccess,
		dataType : 'json'
	});
	function loginsuccess(data){
		if(data.status == 0){
			layer.tips(data.msg,'#'+data.field,{tips:3});
		}
		if(data.status == 1){
			layer.msg(data.msg,{icon:6},function(){
				parent.location.href=data.url;
			});
		}
		if(data.status == 2){
			parent.location.reload();
		}
	}
	
	function regsuccess(data){
		if(data.status == 0){
			layer.tips(data.msg,'#'+data.field,{tips:3});
		}
		if(data.status == 1){
			layer.msg(data.msg,{icon:6})
		}
	}
$('.reloadimg').click(function(){
	$('.vcode').attr('src','/index/index/captcha?d='+Math.random());
});

$('.reloadimg2').click(function(){
	$('.vcode2').attr('src','/index/index/captcha?d='+Math.random());
});

</script>