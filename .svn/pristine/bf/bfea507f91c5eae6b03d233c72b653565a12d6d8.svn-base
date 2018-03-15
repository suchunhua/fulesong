{include file="public/head"/}
    {include file="public/left"/}
    <div class="main-content">
        <div class="main-content-inner" style="overflow-x: hidden">
        {include file="public/sys_head"/}
            <div class="page-content" style="padding:0 0 0 0">

<form method="post"  id="form">
    <input type="hidden" name="mytoken" value="{$mytoken}">
	<a style="height:53px;width:100%; clear: both; display:block;" name="jbsz" id="jbsz"></a>
	<table class="table table-bordered table-hover bdlno"  id="jbsz">
	    <tbody>
	    	<tr style="background: #edf4f9"><td colspan="3" class="bdlno"><b>基本设置</b></td></tr>
	        <tr>
		        <td class="cfgtable w100 bdlno">网站标题:　</td>
		        <td ><input type="text" name="webname" id="webname" value="{$cfg.webname}" class="col-md-12"></td>
		        <td class="cfgtable">填写网站标题【公司名称】</td>
	        </tr>
	        <tr>
	            <td  class="cfgtable w100 bdlno">网站域名:　</td>
	            <td><input type="text" name="weburl" id="weburl" value="{$cfg.weburl}" class="col-md-12"></td>
	            <td class="cfgtable">格式:http://www.baidu.com</td>
	        </tr>
	        
	        <tr>
	            <td  class="cfgtable w100 bdlno">关键词组:　</td>
	            <td><input type="text" name="keywords" id="keywords" value="{$cfg.keywords}" class="col-md-12"></td>
	            <td class="cfgtable">多个以英文逗号分割</td>
	        </tr>
	        <tr>
	            <td  class="cfgtable w100 bdlno">网站描述:　</td>
	            <td><textarea name="description" rows="3" class="col-md-12">{$cfg.description}</textarea></td>
	            <td class="cfgtable">请填写网站的概况信息,200字以内</td>
	        </tr>
	        <tr>
	            <td  class="cfgtable w100 bdlno">备案编号:　</td>
	            <td><input type="text" name="beian" id="beian" value="{$cfg.beian}" class="col-md-12"></td>
	            <td class="cfgtable">没有可不填写</td>
	        </tr>
	        <tr>
	            <td  class="cfgtable w100 bdlno">版权信息:　</td>
	            <td><input type="text" name="power" id="power" value="{$cfg.power}" class="col-md-12"></td>
	            <td class="cfgtable">网站版权信息</td>
	        </tr>
	        <tr>
	           	<td  class="cfgtable w100 bdlno">网站Logo:　</td>
	            <td><input type="text" name="logo"  value="{$cfg.logo}" class="col-md-10">
	             	<a class="upbutton btn btn-primary" id="litpic_btn">选择</a>
	            </td>
	            <td><img src="{$cfg.logo}" alt="" style="max-width: 260px"></td>
	        </tr>
           
            <tr>
                <td  class="cfgtable w100 bdlno">电脑主题:　</td>
                <td>
                    <select name="theme_p">
                        {volist name="theme_path" id="d"}
                        <option value="{$d}" {if condition="$cfg['theme_p'] EQ $d"}selected{/if}>{$d}</option>
                        {/volist}
                    </select>
                </td>
                <td class="cfgtable">更换主题需经开发者确认,风险自负</td>
            </tr>
            <tr>
                <td  class="cfgtable w100 bdlno">首页名称:　</td>
                <td><input type="text" name="indexname" id="indexname" value="{$cfg.indexname}" class="col-md-12"></td>
                <td class="cfgtable"></td>
            </tr>
	    </tbody>
	</table>
	
    <a style="height: 53px; width:100%; clear: both; display:block;" name="lxfs" id="lxfs"></a>
    <table class="table  table-bordered table-hover bdlno">
        <tbody>
        	<tr style="background: #edf4f9"><td colspan="3" class="bdlno"><b>联系方式</b></td></tr>
            <tr>
            <td class="cfgtable w100 bdlno">固定电话:　</td>
            <td><input type="text" name="tela" value="{$cfg.tela}" placeholder="格式:0512-88888888-分机">
                <input type="text" name="telb" value="{$cfg.telb}" placeholder="格式:0512-88888888-分机">
            </td>
            </tr>
            <tr>
                <td  class="cfgtable w100 bdlno">传真号码:　</td>
                <td><input type="text" name="faxa" value="{$cfg.faxa}" placeholder="格式:0512-88888888">
                    <input type="text" name="faxb" value="{$cfg.faxb}" placeholder="格式:0512-88888888">
                </td>
            </tr>
            <tr>
                <td  class="cfgtable w100 bdlno">联系邮箱:　</td>
                <td><input type="text" name="emaila" value="{$cfg.emaila}" placeholder="联系邮箱">
                    <input type="text" name="emailb" value="{$cfg.emailb}" placeholder="联系邮箱">
                </td>
            </tr>
            <tr>
                <td  class="cfgtable w100 bdlno">联系人:　</td>
                <td><input type="text" name="lxra" value="{$cfg.lxra}" placeholder="如:王经理">
                    <input type="text" name="lxrb" value="{$cfg.lxrb}" placeholder="如:张主管">  
                </td>
            </tr>
            <tr>
                <td  class="cfgtable w100 bdlno">联系人手机:　</td>
                <td><input type="text" name="phonea" value="{$cfg.phonea}" placeholder="格式:13588888888">
                    <input type="text" name="phoneb" value="{$cfg.phoneb}" placeholder="格式:13588888888">
                </td>
            </tr>
            <tr>
                <td  class="cfgtable w100 bdlno">联系地址:　</td>
                <td><input type="text" name="addressa" value="{$cfg.addressa}" placeholder="地址一">
                    <input type="text" name="addressb" value="{$cfg.addressb}" placeholder="地址二">
                </td>
            </tr>
        </tbody>
    </table>

    <a style="height: 53px; width:100%; clear: both; display:block;" name="xtaq" id="xtaq"></a>
	<table class="table  table-bordered table-hover bdlno">
	    <tbody>
	        <tr style="background: #edf4f9"><td colspan="3" class="bdlno"><b>系统安全</b></td></tr>
	        <tr>
                <td  class="cfgtable w100 bdlno">登陆地址:　</td>
                <td>
                    <input type="text" name="loginpath" value="{:config('loginpath')}">
                    {$cfg.weburl}/<span class="red">{:config('loginpath')}</span>
                </td>
            </tr>
            <tr>
                <td class="cfgtable w100 bdlno">登陆后缀:　</td>
                <td >
                    <input type="text" name="loginsuffix" value="{:config('loginsuffix')}">
                    {$cfg.weburl}/{:config('loginpath')}_
                    <span class="red">{:config('loginsuffix')}</span>
                </td>
            </tr>
            <tr>
                <td  class="cfgtable w100 bdlno">安 全 码 :　</td>
                <td><input type="text" name="safecode" value="{:config('safecode')}"></td>
            </tr>
            <tr>
                <td class="cfgtable w100 bdlno">系统调试:　</td>
                <td>
                    <div class="checkbox">
                        <label style="padding:0 10px" class="w100">
                            <input name="app_debug" type="radio" class="ace" value="1" {if condition="config('app_debug') EQ 1"}checked{/if}>
                            <span class="lbl"> 开启 </span>
                        </label>
                        <label style="padding:0 10px">
                            <input name="app_debug" type="radio" class="ace" value="0" {if condition="config('app_debug') EQ 0"}checked{/if}>
                            <span class="lbl"> 关闭 </span>
                        </label>
                    </div>
                </td>
            </tr>
            <tr>
                <td class="cfgtable w100 bdlno">页面追踪:　</td>
                <td>
                    <div class="checkbox">
                        <label style="padding:0 10px" class="w100">
                            <input name="app_trace" type="radio" class="ace" value="1" {if condition="config('app_trace') EQ 1"}checked{/if}>
                            <span class="lbl"> 开启 </span>
                        </label>
                        <label style="padding:0 10px">
                            <input name="app_trace" type="radio" class="ace" value="0" {if condition="config('app_trace') EQ 0"}checked{/if}>
                            <span class="lbl"> 关闭 </span>
                        </label>
                    </div>
                </td>
            </tr>
        </tbody>
    </table>
    <a style="height: 53px; width:100%; clear: both; display:block;" name="yjfw" id="yjfw"></a>
    <table class="table  table-bordered table-hover bdlno">
        <tbody>
        	<tr style="background: #edf4f9"><td colspan="3" class="bdlno"><b>发送邮件服务</b></td></tr>
            <tr>
                <td  class="cfgtable w100 bdlno">SMTP服务器:　</td>
                <td><input type="text" name="mail_host" value="{:config('mail_host')}"></td>
            </tr>
            <tr>
                <td class="cfgtable w100 bdlno">SMTP端口:　</td>
                <td ><input type="text" name="mail_port" value="{:config('mail_port')}"></td>
            </tr>
            <tr>
                <td  class="cfgtable w100 bdlno">发件箱账号:　</td>
                <td><input type="text" name="mail_from" value="{:config('mail_from')}"></td>
            </tr>
            <tr>
                <td  class="cfgtable w100 bdlno">发件箱密码:　</td>
                <td><input type="text" name="mail_pass" value="{:config('mail_pass')}"></td>
            </tr>
            <tr>
                <td  class="cfgtable w100 bdlno">发送到邮箱:　</td>
                <td><input type="text" name="mail_to" value="{:config('mail_to')}"></td>
            </tr>
        </tbody>
        <button class="ky_btn btn_blue submitbtn" type="submit">
			        <i class="ace-icon fa fa-check bigger-110"></i>保存
			    </button>
    </table>


	
	<!--
    <a style="height: 53px; width:100%; clear: both; display:block;" name="sysext" id="sysext"></a>
	<table class="table  table-bordered table-hover bdlno">
        <tbody>
            <tr style="background: #edf4f9"><td colspan="3" class="bdlno"><b>系统扩展</b></td></tr>
            <tr>
                <td class="cfgtable w100 bdlno">多 &nbsp;语 &nbsp;言:　</td>
                <td>
                    <div class="checkbox">
                        <label style="padding:0 10px;" class="w100">
                            <input name="morelang" type="radio" class="ace" value="1" {if condition="$cfg['morelang'] EQ 1"}checked{/if}>
                            <span class="lbl"> 多语言 </span>
                        </label>
                        <label style="padding:0 10px">
                            <input name="morelang" type="radio" class="ace" value="0" {if condition="$cfg['morelang'] EQ 0"}checked{/if}>
                            <span class="lbl"> 单语言 </span>
                        </label>
                    </div>
                </td>
            </tr>
            <tr>
                <td  class="cfgtable w100 bdlno">商城系统:　</td>
                <td>
                	<div class="checkbox">
		                <label style="padding:0 10px" class="w100">
		                    <input name="shoping" type="radio" class="ace" value="1" {if condition="config('shoping') EQ 1"}checked{/if}>
		                    <span class="lbl"> 开启购物 </span>
		                </label>
		                <label style="padding:0 10px">
		                    <input name="shoping" type="radio" class="ace" value="0" {if condition="config('shoping') EQ 0"}checked{/if}>
		                    <span class="lbl"> 关闭购物 </span>
		                </label>
		            </div>
                </td>
            </tr>
            <tr>
                <td class="cfgtable w100 bdlno">会员系统:　</td>
                <td>
                    <div class="checkbox">
                        <label style="padding:0 10px" class="w100">
                            <input name="open_member" type="radio" class="ace" value="1" id="open_member_1" {if condition="config('open_member') EQ 1"}checked{/if}>
                            <span class="lbl"> 使用 </span>
                        </label>
                        <label style="padding:0 10px">
                            <input name="open_member" type="radio" class="ace" value="2" id="open_member_2" {if condition="config('open_member') EQ 2"}checked{/if}>
                            <span class="lbl"> 禁用 </span>
                        </label>
                    </div>
                </td>
            </tr>
             <tr>
                <td class="cfgtable w100 bdlno">手 &nbsp;机 &nbsp;端:　</td>
                <td>
                    <div class="checkbox">
                        <label style="padding:0 10px" class="w100">
                            <input name="mobile" id="kq" type="radio" class="ace" value="1" {if condition="$cfg['mobile'] EQ 1"}checked{/if}>
                            <span class="lbl"> 启用 </span>
                        </label>
                        <label style="padding:0 10px">
                            <input name="mobile" id="gb" type="radio" class="ace" value="0" {if condition="$cfg['mobile'] EQ 0"}checked{/if}>
                            <span class="lbl"> 关闭 </span>
                        </label>
                    </div>
                </td>
            </tr>
            <tr {if condition="$cfg['mobile'] EQ 0"}class="hidden"{/if} id="theme_m">
                <td class="cfgtable w100 bdlno">手机主题:　</td>
                <td >
                    <select name="theme_m">
                        <option value="0">选择主题</option>
                        {volist name="theme_path" id="d"}
                        <option value="{$d}" {if condition="$cfg['theme_m'] EQ $d"}selected{/if}>{$d}</option>
                        {/volist}
                    </select>
                </td>
            </tr>
                
        </tbody>
    </table>
    {if condition="config('open_member')"}
    <a style="height: 53px; width:100%; clear: both; display:block;" name="hysz" id="hysz" class="hysz"></a>
    <table class="table  table-bordered table-hover bdlno hysz">
        <tbody>
            <tr style="background: #edf4f9"><td colspan="3" class="bdlno"><b>会员设置</b></td></tr>
            <tr>
                <td class="cfgtable w100 bdlno">新用户注册:　</td>
                <td>
                    <div class="checkbox">
                        <label style="padding:0 10px" class="w100">
                            <input name="open_reg" type="radio" class="ace" value="1" {if condition="config('open_reg') EQ 1"}checked{/if}>
                            <span class="lbl"> 开放注册 </span>
                        </label>
                        <label style="padding:0 10px">
                            <input name="open_reg" type="radio" class="ace" value="2" {if condition="config('open_reg') EQ 2"}checked{/if}>
                            <span class="lbl"> 关闭注册 </span>
                        </label>
                    </div>
                </td>
                <td class="cfgtable"></td>
            </tr>
            <tr>
                <td class="cfgtable w100 bdlno">验证类型:　</td>
                <td>
                    <div class="checkbox">
                        <label style="padding:0 10px" class="w100">
                            <input name="sendtype" type="radio" class="ace" value="p" {if condition="config('sendtype') EQ 'p'"}checked{/if}>
                            <span class="lbl"> 手机验证 </span>
                        </label>
                        <label style="padding:0 10px">
                            <input name="sendtype" type="radio" class="ace" value="e" {if condition="config('sendtype') EQ 'e'"}checked{/if}>
                            <span class="lbl"> 邮箱验证 </span>
                        </label>
                    </div>
                </td>
                <td class="cfgtable">
                    手机验证发送手机验证码,邮件验证发送邮件验证码,<br>需配置发送服务,</td>
            </tr>

            <tr>
                <td  class="cfgtable w100 bdlno">禁用昵称:　</td>
                <td><textarea name="notallow_nickname" rows="3" class="col-md-12">{:config('notallow_nickname')}</textarea></td>
                <td class="cfgtable">禁止用户设置的昵称,多个以英文逗号分割</td>
            </tr>
        </tbody>
    </table>
    {/if}
    -->
</form>
    </div>
</div>
</div>
{include file="public/foot"/}
<script type="text/javascript">
    jQuery(function($) {
       $('#sidebar2').insertBefore('.page-content');
    })

     $('#form').ajaxForm({
        success : complete,
        dataType : 'json'
    });
    function complete(data){
        if(data.status  == 1){
            layer.msg(data.msg,{icon:6},function(){
                window.location.reload();
            });
        }
        if(data.status  == 8){
            layer.msg(data.msg,{icon:5});
        }
	    
    }
    $('#kq').click(function(){
    	$('#theme_m').removeClass('hidden');
    });
    $('#gb').click(function(){
		$('#theme_m').addClass('hidden');
    });

     $('#open_member_1').click(function(){
        $('.hysz').show();
    });
    $('#open_member_2').click(function(){
        $('.hysz').hide();
    });


    

</script>
