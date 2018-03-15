{include file="public/head"/}
    {include file="public/left"/}
    <div class="main-content">
        <div class="main-content-inner">
            {include file="public/plug_head"/}
                        <div class="tabbable">
<form class="form-horizontal" method="post" id="form" action="{:url('addHandle')}">
    <div class="tab-content">
        <div id="basic" class="tab-pane fade in active">
            <div class="form-group">
                <label class="col-sm-1 control-label no-padding-right"> 品牌名称 </label>
                <div class="col-sm-4">
                    <input type="text" name="title" class="col-sm-12" id="title"/>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-1 control-label no-padding-right"> 品牌网址 </label>
                <div class="col-sm-4">
                    <input type="text" name="url" class="col-sm-12" id="url"/>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-1 control-label no-padding-right lh100"> 品牌Logo </label>
                <div class="col-sm-4">
                    <input type="text" name="litpic" class="col-xs-10 col-sm-10"/>
                    <a class="upbutton btn btn-primary" id="litpic_btn">选择</a>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-1 control-label no-padding-right"> 品牌介绍 </label>
                <div class="col-sm-11">
                    <textarea name="description" id="body" class="col-sm-12" style="margin-left:-12px"></textarea>
                </div>
            </div>
        </div>
    </div>
    <button class="ky_btn btn_blue submitbtn" type="submit">
        <i class="ace-icon fa fa-check bigger-110"></i>保存
    </button>
    <div class="form-actions"></div>
</form>
            </div>
                
        </div>
    </div>
{include file="public/foot"/}
<script type="text/javascript">
    var ue = UE.getEditor('body');
    $('#form').ajaxForm({
        beforeSubmit : check,
        success : complete,
        dataType : 'json'
    });
    function check(){
        if($('#title').val()==''){
            layer.tips('必填','#title');
            $('#title').focus();
            return false;
        }
    }
    function complete(data){
        if(data.status==1){
            layer.msg(data.msg,{icon:6},function(){
                window.location.href=data.url;
            });
        }
        if(data.status==0){
            layer.msg(data.msg,{icon:5,time:1500});
        }
    }

</script>
