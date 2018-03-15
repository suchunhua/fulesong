<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <script type="text/javascript" src="_PLUG_/js/jquery1.min.js"></script>
    <link rel="stylesheet" type="text/css" href="_PLUG_/webupload/webuploader.css">
    <script type="text/javascript" src="_PLUG_/webupload/webuploader.js"></script>
</head>
<body>
<style>
.hidden{display:none;}
.up{text-align: center}
.filelist{margin:auto;}
</style>
    <div class="up">
        <input type="hidden" name="returnval" id="returnval" value="">
        <div class="fileList"></div>
        <div class="btn">
            <div class="upbtn btnstyle">选择图片</div>
            <div class="returnbtn btnstyle hidden">确定</div>
        </div>
    </div>

    <script type="text/javascript" src="_PLUG_/webupload/single.js"></script>
    <script>kykkk_upload('up',false);</script>
    <script>
        //像父窗口传值
        $('.returnbtn').click(function(){
            parent.setlitpic($('#returnval').val());
        });
    </script>
</body>
</html>