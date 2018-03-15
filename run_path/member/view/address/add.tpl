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
        <input type="hidden" name="ctrltype" value="add">
        <table class="table  table-bordered table-hover">
            <tbody>
                <tr>
                    <th class="cfgtable bdlno bg_f4f8fd" style="width: 150px;">收货人姓名:　</th>
                    <td ><input type="text" name="getname" id="getname" class="col-md-12"></td>
                </tr>
                <tr>
                    <th class="cfgtable bdlno bg_f4f8fd" style="width: 150px;">收货人手机:　</th>
                    <td ><input type="text" name="getphone" id="getphone" class="col-md-12"></td>
                </tr>
                <tr>
                    <th class="cfgtable bdlno bg_f4f8fd" style="width: 150px;">收货人固话:　</th>
                    <td ><input type="text" name="gettel" id="gettel" class="col-md-12"></td>
                </tr>
                <tr>
                    <th class="cfgtable bdlno bg_f4f8fd" style="width: 150px;">收货人地址:　</th>
                    <td ><input type="text" name="getaddress" id="getaddress" class="col-md-12"></td>
                </tr>
                
                <tr>
                    <td colspan="2" class="text-center">
                        <input type="submit" class="btn btn-info" value="确定">
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