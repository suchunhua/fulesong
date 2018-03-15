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
    <form method="post" action="{:url('addfieldHandle')}" id="form">
        <input type="hidden" name="id" value="{$id}">
        <table id="simple-table" class="table  table-bordered table-hover">
            <tbody>
            	<tr>
                    <td  class="cfgtable w100">字段类型:　</td>
                    <td>
		            	<div class="checkbox">
			                <label style="padding:0 10px;width:200px">
			                    <input name="type" type="radio" class="ace" value="varchar" checked>
			                    <span class="lbl"> 文本(varchar) </span>
			                </label>
			                <label style="padding:0 10px;width:200px">
			                    <input name="type" type="radio" class="ace" value="tinyint">
			                    <span class="lbl"> 数字(tinyint) </span>
			                </label>
			                <label style="padding:0 10px;width:200px">
			                    <input name="type" type="radio" class="ace" value="bjq">
			                    <span class="lbl"> 编辑器(text) </span>
			                </label>
		                </div>
		                <div class="checkbox">
			                <label style="padding:0 10px;width:200px">
			                    <input name="type" type="radio" class="ace" value="img">
			                    <span class="lbl"> 单图片(varchar) </span>
			                </label>
			                <label style="padding:0 10px;width:200px">
			                    <input name="type" type="radio" class="ace" value="imgs">
			                    <span class="lbl"> 图片组(text) </span>
			                </label>
			                <label style="padding:0 10px;width:200px">
			                    <input name="type" type="radio" class="ace" value="file">
			                    <span class="lbl"> 附件(varchar) </span>
			                </label>
			            </div>
			            <div class="checkbox">
		                <label style="padding:0 10px;width:200px">
		                    <input name="type" type="radio" class="ace" value="radio">
		                    <span class="lbl"> 单选项(radio) </span>
		                </label>
		                <label style="padding:0 10px;width:200px">
		                    <input name="type" type="radio" class="ace" value="checkbox">
		                    <span class="lbl"> 多选项(checkbox) </span>
		                </label>
		                <label style="padding:0 10px;width:200px">
		                    <input name="type" type="radio" class="ace" value="select">
		                    <span class="lbl"> 下拉框(select) </span>
		                </label>
		            	</div>
                    </td>
                </tr>
                <tr>
                    <td class="cfgtable w100">表单文字:　</td>
                    <td ><input type="text" name="comment" id="comment" class="col-md-12" placeholder="发布内容时显示的提示文字"></td>
                </tr>
                <tr>
                    <td  class="cfgtable w100">字段名称:　</td>
                    <td><input type="text" name="name" id="name" class="col-md-12" placeholder="只能字母和数字,并以字母开头"></td>
                </tr>
                <tr>
                    <td  class="cfgtable w100">默认值:　</td>
                    <td><input type="text" name="def" id="def" class="col-md-12" placeholder="下拉框,单选项,多选项的默认值"></td>
                </tr>
                <tr>
                    <td  class="cfgtable w100">长　　度:　</td>
                    <td><input type="text" name="length" id="length" class="col-md-12" placeholder=""></td>
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
     	beforeSubmit : checkform,
        success : complete,
        dataType : 'json'
    });
     function checkform(){
     	if($('#fcomment').val()==''){
     		layer.tips('必填',$('#fcomment'),{tips: 3});
            $('#fcomment').focus();
            return false;
     	}
     	if($('#fname').val()==''){
     		layer.tips('必填',$('#fname'),{tips: 2});
            $('#fname').focus();
            return false;
     	}
     }
    function complete(data){
        if(data.status==0){
            layer.msg(data.msg,{icon:5,time:2000});
        }
        if(data.status==1){
            layer.msg(data.msg,{icon:6,time:2000},function(){
              parent.isclose(data.status);
            });
        }
    }
</script>