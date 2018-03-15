<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>会员注册</title>
	<link rel="stylesheet" href="{$style}/css/style.css">
</head>
<body>
	<div class="form_group">
		<div class="bd">
			<div class="item">
				<form action="{:url('regHandle')}" method="post" id="regform">
					<input type="hidden" name="sendtype" value="{$sendtype}" id="sendtype">
					<div class="input_group">
						<input type="text" class="input w100" name="nickname" id="nickname" placeholder="输入账户昵称">
					</div>
					{if condition="config('sendtype') EQ 'p'"}
					<div class="input_group">
						<input type="text" class="input w100" name="phone" id="phone" placeholder="输入您的手机">
					</div>
					{else/}
					<div class="input_group">
						<input type="text" class="input w100" name="email" id="email" placeholder="输入您的邮箱">
					</div>
					{/if}
					<div class="input_group">
						<span></span>
						<input type="text" class="input w100" name="regpass" id="regpass" placeholder="设置登录密码">
					</div>
					<div class="input_group">
						<input type="text" class="input w70 fl" name="sendcode" id="sendcode" placeholder="输入安全码">
						<button  type="button" class="hqyzm w30 fl sendbtn">获取安全码</button>
					</div>
					
					<div class="input_group text-center">
						<input type="submit" value="确定" class="dlBtn">
					</div>
				</form>
			</div>
		</div>
	</div>

<form action="/member/help/sendcode" id="captchaform" method="post" style="display: none">
	<input type="hidden" name="hiddphone" id="hiddphone">
	<input type="hidden" name="hiddemail" id="hiddemail">
	<input type="hidden" name="hiddname" id="hiddname">
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
var phonereg = /^[13|14|15|17|18]\d{9}$/;
var emailreg = /^[a-z0-9]+([._\\-]*[a-z0-9])*@([a-z0-9]+[-a-z0-9]*[a-z0-9]+.){1,63}[a-z0-9]+$/;
	$(".form_group").slide({
		trigger:"click"
	});
	$('.hqyzm').click(function(){
		var nickname = $('#nickname').val();
		var sendtype = $('#sendtype').val();
		var phone = $('#phone').val();
		var pp = /^(13|14|15|18)[0-9]{9}$/;
		var email = $('#email').val();
		var ep = /\w[-\w.+]*@([A-Za-z0-9][-A-Za-z0-9]+\.)+[A-Za-z]{2,14}/;
		if(nickname == ''){
			layer.tips('昵称不能不空','#nickname',{tips:1});
			return false;
		}
		if(sendtype == 'e'){
			if(!ep.test(email)){
				layer.tips('请检查邮箱','#email',{tips:1});
				return false;
			}
		}
		if(sendtype == 'p'){
			if(!pp.test(phone)){
				layer.tips('请检查手机号','#phone',{tips:1});
				return false;
			}
		}
		$('#hiddphone').val(phone);
		$('#hiddemail').val(email);
		$('#hiddname').val(nickname);
		$('#captchaform').show();
		$('.closethis').show();
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
		if(data.status==2){
			$('#captchaform').hide();
			$('.closethis').hide();
			layer.tips(data.msg,'#'+data.field,{tips:1});
		}
	}
	function djs() {
		var times = 117 * 100; // 120秒
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
		beforeSubmit : check,
		success  : regsuccess,
		dataType : 'json'
	});
	function check(){
		var nickname = $('#nickname').val().length;
		var pass = $('#regpass').val().length;
		var scode = $('#sendcode').val().length;
		var phone = $('#phone').val();
		var pp = /^(13|14|15|18)[0-9]{9}$/;
		var email = $('#email').val();
		var ep = /\w[-\w.+]*@([A-Za-z0-9][-A-Za-z0-9]+\.)+[A-Za-z]{2,14}/;
		if(nickname<2 || nickname>10){
			layer.tips('昵称长度为2-10位','#nickname',{tips:1});
			return false;
		}
		
		if(!ep.test(email)){
			layer.tips('请检查邮箱','#email',{tips:1});
			return false;
		}
		if(regpass<6 || regpass>20){
			layer.tips('密码长度为6-20位','#regpass',{tips:1});
			return false;
		}
		if(scode<5 || scode>7){
			layer.tips('安全码错误','#sendcode',{tips:1});
			return false;
		}
	}
	
	function regsuccess(data){
		if(data.status == 0){
			layer.tips(data.msg,'#'+data.field,{tips:3});
		}
		if(data.status == 1){
			layer.msg(data.msg,{icon:6,time:1500},function(){
				window.location.href="/member";
			});
		}
	}
$('.reloadimg').click(function(){
	$('.vcode').attr('src','/index/index/captcha?d='+Math.random());
});

$('.reloadimg2').click(function(){
	$('.vcode2').attr('src','/index/index/captcha?d='+Math.random());
});

</script>