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
					<div class="input_group">
						<input type="text" class="input w100" name="loginname" id="loginname">
					</div>
					<div class="input_group">
						<input type="password" class="input w100" name="loginpass" id="loginpass">
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
</body>
<script type="text/javascript" src="_PLUG_/js/jquery1.min.js"></script>
<script type="text/javascript" src="{$style}/js/jquery.SuperSlide.2.1.1.js"></script>
<script src="_PLUG_/js/jquery.form.js"></script>
<script src="_PLUG_/js/layer.js"></script>
</html>
<script>

	$('#loginform').ajaxForm({
		success  : loginsuccess,
		dataType : 'json'
	});
	function loginsuccess(data){
		if(data.status == 0){
			parent.location.href=data.url;
		}
		if(data.status == 1){
			layer.msg(data.msg,{icon:6},function(){
				parent.location.href=data.url;
			});
		}
	}
$('.reloadimg').click(function(){
	$('.vcode').attr('src','/index/index/captcha?d='+Math.random());
});

</script>