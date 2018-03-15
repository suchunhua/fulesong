{include file="public/head"/}
        <div class="main-container ace-save-state" id="main-container">
            {include file="public/left"/}
            <div class="main-content">
                <div class="main-content-inner">
                    <div class="page-content">
                        <div class="row" style="margin-bottom: 15px;margin-top: 15px">
                            <div class="col-xs-12 col-sm-8">
								<div class="mt-info">
									<div class="userphoto"><img src="http://obj.com/image.php?abc={:$safe->encode($user.photo)}"></div>
	                                <div class="mt-info-title">
	                                    <b style="color:#ff8041">{$user.nickname}</b>
	                                    <label class="hidden-xs">会员等级：<span>{$user.gname}</span></label>
	                                </div>
	                                <div class="mt-info-txt">
	                                    <p>
	                                        <a class="mt-info-icon mobile" href="###" title="手机认证">手机认证</a>
	                                        <a class="mt-info-icon mail" href="###" title="邮箱认证">邮箱认证</a>
	                                        <a class="mt-info-icon weixin" href="###" title="绑定微信">微信绑定</a>
	                                        <a class="mt-info-icon pwd-protect" href="###" title="密码保护">密码保护</a>
	                                    </p>
	                                </div>
	                            </div>
	                            <div class="btngroup">
	                            	<div class="infobox infobox-green">
	                            		
										<div class="infobox-icon">
											<i class="ace-icon fa fa-comments"></i>
										</div>
										<div class="infobox-data">
											<a href="{:url('info/index')}"><div class="infobox-content">资料编辑</div></a>
										</div>
										
									</div>

									<div class="infobox infobox-blue">
										<div class="infobox-icon">
											<i class="ace-icon fa fa-twitter"></i>
										</div>
										<div class="infobox-data">
											<a href="{:url('info/upphoto')}"><div class="infobox-content">更换头像</div></a>
										</div>
									</div>

									<div class="infobox infobox-pink">
										<div class="infobox-icon">
											<i class="ace-icon fa fa-shopping-cart"></i>
										</div>
										<div class="infobox-data">
											<a href="{:url('info/uppass')}"><div class="infobox-content">修改密码</div></a>
										</div>
									</div>

									<div class="infobox infobox-red">
										<div class="infobox-icon">
											<i class="ace-icon fa fa-flask"></i>
										</div>
										<div class="infobox-data">
											<div class="infobox-content">??