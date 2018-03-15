<!DOCTYPE html>
<html lang="en">
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title>管理登录</title>
		<link rel="stylesheet" href="{$style}/css/bootstrap.css" />
		<link rel="stylesheet" href="_PLUG_/awesome/css/font-awesome.css" />
		<link rel="stylesheet" href="{$style}/css/ace-fonts.css" />
		<link rel="stylesheet" href="{$style}/css/ace.css" />
		<!--[if lte IE 9]>
			<link rel="stylesheet" href="{$style}/css/ace-part2.css" />
		<![endif]-->
		<link rel="stylesheet" href="{$style}/css/ace-rtl.css" />
		<link rel="stylesheet" href="{$style}/css/login.css" />
		<!--[if lte IE 9]>
		  <link rel="stylesheet" href="{$style}/css/ace-ie.css" />
		<![endif]-->
		<!--[if lte IE 8]>
		<script src="{$style}/js/html5shiv.min.js"></script>
		<script src="{$style}/js/respond.min.js"></script>
		<![endif]-->
		<!--[if IE]> --><script src="_PLUG_/js/jquery1.min.js"></script><!-- <![endif]-->
		<script type="text/javascript">
			if('ontouchstart' in document.documentElement) document.write("<script src='{$style}/js/jquery.mobile.custom.js'>"+"<"+"/script>");
		</script>
	</head>

	<body class="login-layout light-login">
		<style>
			*{margin: 0;padding: 0;}
			#container {
				position: absolute;
				height: 100%;
				width: 100%;
			}
			#output {
				width: 100%;
				height: 100%;
			}
		</style>
			<script src="{$style}/login/vector.js"></script>
		<div id="container"><div id="output"></div></div>
		<script>
			$(function(){
				new Victor("container", "output");
			});
		</script>
		<div id="large-header"> <canvas id="demo-canvas"></canvas> </div>
		<div class="kykkk">
			<div id="login-box" class="login-box visible widget-box no-border">
				<div class="widget-body">
					<div class="widget-main">
						<form method="post" id="loginform" action="{:url('loginHandle')}">
							<fieldset>
								<label class="block clearfix">
									<span class="block input-icon input-icon-left">
										<input type="text" class="form-control" placeholder="帐号" name="name" id="name"/>
										<i class="ace-icon fa fa-user"></i>
									</span>
								</label>

								<label class="block clearfix">
									<span class="block input-icon input-icon-left">
										<input type="password" class="form-control" placeholder="密码" name="pass" id="pass"/>
										<i class="ace-icon fa fa-lock"></i>
									</span>
								</label>

								<label class="block clearfix">
									<span class="block input-icon input-icon-left">
										<input type="text" class="form-control" placeholder="安全码" name="scode" id="scode"/>
										<i class="ace-icon fa fa-lock"></i>
									</span>
								</label>

								<label class="block clearfix">
									<span class="block input-icon input-icon-left">
										<input type="text" class="form-control" placeholder="验证码" name="vcode" id="vcode"/>
										<i class="ace-icon fa fa-lock"></i>
									</span>
									<div class="clearfix" style="height: 5px"></div>
									<span class=" input-icon width-55">
										<img src="/admin/captcha" alt="验证码" id="vcodeimg" style="width:100%">
									</span>
									<span class="input-icon-right width-35">
									<a class="width-45 pull-right btn btn-sm btn-primary" id="refresh">
										<i class="ace-icon fa fa-refresh"></i>
										<span class="bigger-110">刷新验证码</span>
									</a></span>
									
								</label>

								

								<div class="clearfix">
									<button type="submit" class="width-100 pull-left btn btn-sm btn-primary">
										<i class="ace-icon fa fa-key"></i>
										<span class="bigger-110">立即登录</span>
									</button>
									
								</div>

								<div class="space-4"></div>
							</fieldset>
						</form>
					</div>

					<div class="toolbar clearfix">
						<div>
							<a href="#" data-target="#forgot-box" class="forgot-password-link">
								<i class="ace-icon fa fa-arrow-left"></i>
								忘记密码
							</a>
						</div>

						<div>
							<a href="/" class="user-signup-link">
								网站首页
								<i class="ace-icon fa fa-arrow-right"></i>
							</a>
						</div>
					</div>
				</div><!-- /.widget-body -->
			</div><!-- /.login-box -->

			<div id="forgot-box" class="forgot-box widget-box no-border">
				<div class="widget-body">
					<div class="widget-main">
						<h4 class="header red lighter bigger">
							<i class="ace-icon fa fa-key"></i>
							密码找回
						</h4>

						<div class="space-6"></div>
						<p>请输入管理员邮箱</p>

						<form>
							<fieldset>
								<label class="block clearfix">
									<span class="block input-icon input-icon-right">
										<input type="email" class="form-control" placeholder="Email" />
										<i class="ace-icon fa fa-envelope"></i>
									</span>
								</label>

								<div class="clearfix">
									<button type="button" class="width-35 pull-right btn btn-sm btn-danger">
										<i class="ace-icon fa fa-lightbulb-o"></i>
										<span class="bigger-110">立即找回</span>
									</button>
								</div>
							</fieldset>
						</form>
					</div><!-- /.widget-main -->

					<div class="toolbar center">
						<a href="#" data-target="#login-box" class="back-to-login-link">
							返回登录页
							<i class="ace-icon fa fa-arrow-right"></i>
						</a>
					</div>
				</div>
			</div>
		</div>
		<script src="_PLUG_/js/jquery.form.js"></script>
		<script src="_PLUG_/js/layer.js"></script>
		<script type="text/javascript">
			jQuery(function($) {
			 $(document).on('click', '.toolbar a[data-target]', function(e) {
				e.preventDefault();
				var target = $(this).data('target');
				$('.widget-box.visible').removeClass('visible');//hide others
				$(target).addClass('visible');//show target
			 });
			});
			//验证码切换
			$('#refresh').click(function(){
				$('#vcodeimg').attr('src','/admin/captcha?d='+Math.random());
			});
			//管理员登录
			$('#loginform').ajaxForm({
				beforeSubmit : check,
				success : complete,
				dataType : 'json'
			});
			function check(){

			}
			function complete(data){
				if(data.status==1){
					layer.msg(data.msg,{icon:6},function(){
						window.location.href=data.url;
					});
				}else{
					$('#vcodeimg').attr('src','/admin/captcha?d='+Math.random());
					layer.tips(data.msg,'#'+data.field,{tips:3});
				}
			}

			
		</script>
	</body>
</html>

