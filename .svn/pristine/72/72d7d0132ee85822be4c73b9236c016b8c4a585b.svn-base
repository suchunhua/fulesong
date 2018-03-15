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
        <script type="text/javascript" src="_PLUG_/ueditor/ueditor.config.js"></script>
        <script type="text/javascript" src="_PLUG_/ueditor/ueditor.all.js"></script>

    </head>
<body>
<div class="page-content">
    <form method="post" action="{:url('editHandle')}" id="form">
        <input type="hidden" name="id" value="{$arc.id}">
        <table id="simple-table" class="table  table-bordered table-hover">
            <tbody>
                <tr>
                    <td  class="cfgtable w100">会员昵称:　</td>
                    <td><input type="text" name="nickname" id="nickname" value="{$arc.nickname}" class="col-md-12"></td>
                    <td class="cfgtable">昵称可为中文</td>
                </tr>
                <tr>
                    <td class="cfgtable w100">会员邮箱:　</td>
                    <td ><input type="text" name="email" value="{$arc.email}" class="col-md-12"></td>
                    <td class="cfgtable">字母开头,字母、数字、下划线(5-15位组合)</td>
                </tr>
                <tr>
                    <td class="cfgtable w100">会员手机:　</td>
                    <td ><input type="text" name="phone" value="{$arc.phone}" class="col-md-12"></td>
                    <td class="cfgtable">字母开头,字母、数字、下划线(5-15位组合)</td>
                </tr>
                
                
                <tr>
                    <td  class="cfgtable w100">修改密码:　</td>
                    <td><input type="text" name="pass" id="pass" class="col-md-12" placeholder="不改密码,留空"></td>
                    <td class="cfgtable">至少【字母、数字、特殊符号】两种组合</td>
                </tr>
                <tr>
                    <td  class="cfgtable w100">会员类型:　</td>
                    <td>
                        <select name="accounttype">
                            <option value="1" {if condition="$arc['type'] EQ 1"}selected{/if}>个人用户</option>
                            <option value="2" {if condition="$arc['type'] EQ 2"}selected{/if}>企业用户</option>
                        </select>
                    </td>
                    <td class="cfgtable"></td>
                </tr>
                <tr>
                    <td  class="cfgtable w100">会员组别:　</td>
                    <td>
                        <select name="mgroupid">
                            {volist name="mgrouplist" id="m"}
                            <option value="{$m.gid}" {if condition="$arc['mgroupid'] EQ $m['gid']"}selected{/if}>{$m.gname}</option>
                            {/volist}
                        </select>
                    </td>
                    <td class="cfgtable"></td>
                </tr>
                <tr>
                    <td  class="cfgtable w100">会员状态:　</td>
                    <td>
                        <select name="status">
                            <option value="0" {if condition="$arc['status'] EQ 0"}selected{/if}>未激活</option>
                            <option value="1" {if condition="$arc['status'] EQ 1"}selected{/if}>正常使用</option>
                        </select>
                    </td>
                    <td class="cfgtable"></td>
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
        success : complete,
        dataType : 'json'
    });
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