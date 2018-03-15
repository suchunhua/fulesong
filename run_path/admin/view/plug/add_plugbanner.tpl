{include file="public/head"/}
{include file="public/left"/}
	<div class="main-content">
		<div class="main-content-inner">
			{include file="public/plug_head"/}
						<div class="tabbable">
							
<form class="form-horizontal" method="post" id="form" action="{:url('addHandle')}">
    <input type="hidden" name="type" value="{$type}">
	<div class="tab-content">
		<div id="basic" class="tab-pane fade in active">
			
            {if condition="$cfg['mobile']"}
            <div class="form-group">
                <label class="col-sm-1 control-label no-padding-right"> 显示终端 </label>
                <div class="col-sm-4">
                    <select class="form-control" id="platform" name="platform">
                    <option value="p" {if condition="$arc['platform'] EQ 'p'"}selected{/if}>电脑端</option>
                    <option value="m" {if condition="$arc['platform'] EQ 'm'"}selected{/if}>移动端</option>
                    </select>
                </div>
            </div>
            {/if}
            {if condition="$cfg['shoping']"}
            <div class="form-group">
                <label class="col-sm-1 control-label no-padding-right"> 显示版块 </label>
                <div class="col-sm-4">
                    <select class="form-control" id="cors" name="cors">
                    <option value="c" {if condition="$arc['cors'] EQ 'c'"}selected{/if}>企业站</option>
                    <option value="s" {if condition="$arc['cors'] EQ 's'"}selected{/if}>商城站</option>
                    </select>
                </div>
            </div>
            {/if}

			<div class="form-group">
				<label class="col-sm-1 control-label no-padding-right"> 轮播标题 </label>
				<div class="col-sm-4">
					<input type="text" name="title" placeholder="应用于图片ALT" class="col-sm-12" id="title"/>
				</div>
			</div>
            <div class="form-group">
                <label class="col-sm-1 control-label no-padding-right"> 链接地址 </label>
                <div class="col-sm-4">
                    <input type="text" name="url" placeholder="格式：http://www.baidu.com" class="col-sm-12" id="url"/>
                </div>
            </div>
            
            <div class="form-group">
                <label class="col-sm-1 control-label no-padding-right"> 轮播排序 </label>
                <div class="col-sm-4">
                    <input type="text" name="rank" class="col-sm-12" id="rank" placeholder="数字越小越靠前" />
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-1 control-label no-padding-right"> 链接状态 </label>
               	<div class="col-sm-4">
					<select class="form-control" id="status" name="status">
                    <option value="1">显示</option>
                    <option value="0">隐藏</option>
					</select>
				</div>
            </div>
            <div class="form-group">
                <label class="col-sm-1 control-label no-padding-right lh100"> 缩 &nbsp;略 &nbsp;图 </label>
                <div class="col-sm-4">
                    <input type="text" name="litpic" class="col-xs-10 col-sm-10"/>
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
