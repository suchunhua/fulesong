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
                <label class="col-sm-1 control-label no-padding-right"> 显示平台 </label>
                <div class="col-sm-4">
                    <select class="form-control" id="platform" name="platform">
                    <option value="p">电脑端</option>
                    {if condition="$cfg['mobile']"}
                    <option value="m">移动端</option>
                    {/if}
                    </select>
                </div>
            </div>
            
			<div class="form-group">
				<label class="col-sm-1 control-label no-padding-right"> 轮播标题 </label>
				<div class="col-sm-4">
					<input type="text" name="title" value="{$arc.title}" class="col-sm-12" id="title"/>
				</div>
			</div>
            <div class="form-group">
                <label class="col-sm-1 control-label no-padding-right"> 链接地址 </label>
                <div class="col-sm-4">
                    <input type="text" name="url" value ="{$arc.url}" class="col-sm-12" id="url"/>
                </div>
            </div>
            
            <div class="form-group">
                <label class="col-sm-1 control-label no-padding-right"> 轮播排序 </label>
                <div class="col-sm-4">
                    <input type="text" name="rank" class="col-sm-12" id="rank" value="{$arc.rank}" />
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-1 control-label no-padding-right"> 链接状态 </label>
               	<div class="col-sm-4">
					<select class="form-control" id="status" name="status">
                    <option value="1" {if condition="$arc['status'] EQ 1"}selected{/if}>显示</option>
                    <option value="0" {if condition="$arc['status'] EQ 0"}selected{/if}>隐藏</option>
					</select>
				</div>
            </div>
            <div class="form-group">
                <label class="col-sm-1 control-label no-padding-right lh100"> 缩 &nbsp;略 &nbsp;图 </label>
                <div class="col-sm-4">
                    <input type="text" name="litpic" class="col-xs-10 col-sm-10" value="{$arc.litpic}" />
                    <a class="upbutton btn btn-primary" id="litpic_btn">选择</a>
                </div>
            </div>
		</div>
	</div>
    <div class="clearfix form-actions">
        <div class="col-md-offset-1 col-md-9">
            <button class="btn btn-info" type="submit">
                <i class="ace-icon fa fa-check bigger-110"></i>确定
            </button>
        </div>
    </div>
</form>
						</div>
				
		</div>
	</div>
{include file="public/foot"/}
<script type="text/javascript">
    $('#form').ajaxForm({
        beforeSubmit : check,
        success : complete,
        dataType : 'json'
    });
    function check(){
        if($('#title').val()==''){
            layer.tips('标题不能为空','#title');
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
