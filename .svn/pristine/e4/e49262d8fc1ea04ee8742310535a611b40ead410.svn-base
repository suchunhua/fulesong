<!DOCTYPE html>
<html lang="en">
    <head>
        <meta name="renderer" content="webkit">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
        <meta charset="utf-8" />
        <title>控制台</title>
        <meta name="keywords" content="kykkk" />
        <meta name="description" content="kykkk" />
        <link rel="stylesheet" href="_PLUG_/bootstrap/css/bootstrap.css" />
        <link rel="stylesheet" href="_PLUG_/awesome/css/font-awesome.css" />
        <link rel="stylesheet" href="{$style}/css/jquery-ui.custom.min.css" />
        <link rel="stylesheet" href="{$style}/css/jquery.gritter.min.css" />
        <link rel="stylesheet" href="{$style}/css/ace-fonts.css" />
        <link rel="stylesheet" href="{$style}/css/ace.css" class="ace-main-stylesheet" id="main-ace-style" />
        <!--[if lte IE 9]>
            <link rel="stylesheet" href="{$style}/css/ace-part2.css" class="ace-main-stylesheet" />
        <![endif]-->
        <link rel="stylesheet" href="{$style}/css/ace-skins.css" />
        <link rel="stylesheet" href="{$style}/css/ace-rtl.css" />
        <link rel="stylesheet" href="{$style}/css/kykkk.css" />

        <!--[if lte IE 9]>
          <link rel="stylesheet" href="{$style}/css/ace-ie.css" />
        <![endif]-->

        <!-- inline styles related to this page -->
        <style>
            /* some elements used in demo only */
            .spinner-preview {
                width: 100px;
                height: 100px;
                text-align: center;
                margin-top: 60px;
            }
            
            .dropdown-preview {
                margin: 0 5px;
                display: inline-block;
            }
            .dropdown-preview  > .dropdown-menu {
                display: block;
                position: static;
                margin-bottom: 5px;
            }
        </style>

        <!-- ace settings handler -->
        <script src="{$style}/js/ace-extra.js"></script>
        <!--[if lte IE 8]>
        <script src="../components/html5shiv/dist/html5shiv.min.js"></script>
        <script src="../components/respond/dest/respond.min.js"></script>
        <![endif]-->
        
        <!--[if !IE]> --><script src="{$style}/js/jquery2.min.js"></script><!-- <![endif]-->
        <!--[if IE]> --><script src="{$style}/js/jquery1.min.js"></script><!-- <![endif]-->
        <script type="text/javascript">
            if('ontouchstart' in document.documentElement) document.write("<script src='{$style}/js/jquery.mobile.custom.js'>"+"<"+"/script>");
        </script>
    </head>
<body>
<div class="page-content">
    <form method="post" action="{:url('addHandle')}" id="form">
        <table id="simple-table" class="table  table-bordered table-hover">
            <tbody>
            	<tr>
            		<td class="cfgtable w100">账号类型:　</td>
            		<td>
	                    <div class="checkbox">
	                        <label style="padding:0 10px">
	                            <input name="accounttype" type="radio" class="ace" value="1" checked>
	                            <span class="lbl"> 个人用户 </span>
	                        </label>
	                       <label style="padding:0 10px">
	                            <input name="accounttype" type="radio" class="ace" value="2" >
	                            <span class="lbl"> 企业用户 </span>
	                        </label>
	                    </div>
	                </td>
	                <td class="cfgtable hidden-xs"><b>*</b>默认类型</td>
            	</tr>
                <tr>
                    <td class="cfgtable w100">会员手机:　</td>
                    <td ><input type="text" name="phone" id="phone" class="col-md-12" placeholder="请填写会员的手机号"></td>
                    <td class="cfgtable hidden-xs"><b>*</b>请填写会员的手机号</td>
                </tr>
                <tr>
                    <td class="cfgtable w100">会员邮箱:　</td>
                    <td ><input type="text" name="email" id="email" class="col-md-12" placeholder="请填写会员的邮箱号"></td>
                    <td class="cfgtable hidden-xs"><b>*</b>请填写会员的邮箱号</td>
                </tr>
                <tr>
                    <td  class="cfgtable w100">会员昵称:　</td>
                    <td><input type="text" name="nickname" id="nickname" class="col-md-12" placeholder="必填"></td>
                    <td class="cfgtable hidden-xs"><b>*</b>昵称可为中文</td>
                </tr>
                <tr>
                    <td  class="cfgtable w100">登陆密码:　</td>
                    <td><input type="text" name="pass" id="pass" class="col-md-12"></td>
                    <td class="cfgtable hidden-xs"><b>*</b>至少【字母、数字、特殊符号】中的两种组合,最短六位</td>
                </tr>
               
                <tr>
                    <td  class="cfgtable w100">会员组别:　</td>
                    <td>
                        <select name="mgroupid">
                            {volist name="mgrouplist" id="m"}
                            <option value="{$m.gid}">{$m.gname}</option>
                            {/volist}
                        </select>
                    </td>
                    <td class="cfgtable hidden-xs"></td>
                </tr>
                <tr>
            		<td class="cfgtable w100">会员状态:　</td>
            		<td>
	                    <div class="checkbox">
	                        <label style="padding:0 10px">
	                            <input name="status" type="radio" class="ace" value="1" checked>
	                            <span class="lbl"> 正常使用 </span>
	                        </label>
	                        <label style="padding:0 10px">
	                            <input name="status" type="radio" class="ace" value="0" >
	                            <span class="lbl"> 激活使用 </span>
	                        </label>
	                    </div>
	                </td>
	                <td class="cfgtable hidden-xs"></td>
            	</tr>
                <tr> <td  class="cfgtable w100">　</td>
                    <td colspan="2 col-md-offset-1">
                    <input type="submit" value="保存" class="ky_btn btn_blue p715">
                    </td>
                </tr>
            </tbody>
        </table>
    </form>
</div>
</body>
</html>
<script type="text/javascript" src="_PLUG_/js/jquery.form.js"></script>
<script type="text/javascript" src="_PLUG_/js/layer.js"></script>
<script src="{$style}/js/kykkk.js"></script>
<script type="text/javascript">
    $('#form').ajaxForm({
     	beforeSubmit : check,
        success : complete,
        dataType : 'json'
    });
   
    function check(){
    	if($('#phone').val() == ''){
    		layer.tips('手机必填',"#phone","3");
    		$('#phone').focus();
    		return false;
    	}
    	if($('#email').val() == ''){
    		layer.tips('邮箱必填',"#email","3");
    		$('#email').focus();
    		return false;
    	}
    	if($('#nickname').val() == ''){
    		layer.tips('昵称必填',"#nickname","3");
    		$('#nickname').focus();
    		return false;
    	}
    	if($('#pass').val() == ''){
    		layer.tips('密码必填',"#pass","3");
    		$('#pass').focus();
    		return false;
    	}
    }
    function complete(data){
        if(data.status==0){
            layer.msg(data.msg,{icon:5,time:1500});
        }
        if(data.status==1){
            layer.msg(data.msg,{icon:6,time:1500},function(){
              parent.isclose(data.status);
            });
        }
    }


</script>
<style>
	.cfgtable b{color:#f00; padding-right: 5px; }
</style>