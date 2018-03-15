{include file="public/head"/}
	{include file="public/left"/}
	<div class="main-content">
		<div class="main-content-inner">
			{include file="public/plug_head"/}
						<div class="tabbable">
<form class="form-horizontal" method="post" id="form" action="{:url('editHandle')}">
    <input type="hidden" name="type" value="{$type}">
    <input type="hidden" name="id" value="{$arc.id}">
	<div class="tab-content">
		<div id="basic" class="tab-pane fade in active">
			<div class="form-group">
				<label class="col-sm-1 control-label no-padding-right"> 标示名称 </label>
				<div class="col-sm-4">
					<input type="text" name="mark" value="{$arc.mark}" class="col-sm-12" id="mark"/>
				</div>
			</div>
            <div class="form-group">
                <label class="col-sm-1 control-label no-padding-right"> 标　　题 </label>
                <div class="col-sm-4">
                    <input type="text" name="title" value="{$arc.title}" class="col-sm-12" id="title"/>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-1 control-label no-padding-right"> 链　　接 </label>
                <div class="col-sm-4">
                    <input type="text" name="url" value="{$arc.url}" class="col-sm-12" id="url"/>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-1 control-label no-padding-right lh100"> 缩 &nbsp;略 &nbsp;图 </label>
                <div class="col-sm-4">
                    <input type="text" name="litpic" class="col-xs-10 col-sm-10" value="{$arc.litpic}" />
                    <a class="upbutton btn btn-primary" id="litpic_btn">选择</a>
                </div>
            </div>
            
            <div class="form-group">
                <label class="col-sm-1 control-label no-padding-right"> 辅助内容 </label>
                <div class="col-sm-11">
                    <textarea name="content" id="body" class="col-sm-12" style="margin-left:-12px">{$arc.content}</textarea>
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
        if($('#mark').val()==''){
            layer.tips('必填','#mark');
            $('#mark').focus();
            return false;
        }
        if($('#title').val()==''){
            layer.tips('必填','#title');
            $('#mark').focus();
            return false;
        }
    }
    function complete(data){
        if(data.status==1){
            layer.msg(data.msg,{icon:6},function(){
                window.location.href=data.url;
            });
        }else{
            layer.msg(data.msg,{icon:1},function(){
                window.location.href=data.url;
            });
        }
    }

</script>
