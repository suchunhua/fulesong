<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <script type="text/javascript" src="_PLUG_/js/jquery1.min.js"></script>
    <link rel="stylesheet" type="text/css" href="_PLUG_/webupload/webuploader.css">
    <link rel="stylesheet" type="text/css" href="{$style}/css/kykkk.css">
    <script type="text/javascript" src="_PLUG_/webupload/webuploader.js"></script>
</head>
<body>
<style>
.file-item{display:inline-block;}
#pics{display:block; width:460px; height: 200px; border:1px solid #ddd; display: none}
#filePicker{width:50%; text-align: right; float: left; margin-right: 1%}
.return{width: 40%; float: left;}
.p10{padding:10px;}
</style>
    <div id="pics"></div>
    <div id="uploader-demo" class="wu-example">
        <div id="fileList" class="uploader-list"></div>
        <div id="filePicker" class="webuploader-container">
        	<div class="webuploader-pick ky_btn btn_blue p10">选择</div>
        </div>
        <div class="return">
        	<div class="returnbtn ky_btn btn_blue p10">确定</div>
        </div>
        
    </div>
    
    <script type="text/javascript" src="_PLUG_/webupload/multiple.js"></script>
    <script>kykkk_upload_more();</script>
    <script>
        //像父窗口传值
        $('.returnbtn').click(function(){
            parent.setpics($('#pics').html());
        });
    </script>
</body>
</html>