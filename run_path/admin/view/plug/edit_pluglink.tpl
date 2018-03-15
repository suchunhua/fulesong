{include file="public/head"/}
{include file="public/left"/}
	<div class="main-content">
		<div class="main-content-inner">
			{include file="public/plug_head"/}
						<div class="tabbable">
						
<form class="form-horizontal" method="post" id="form"  action="{:url('editHandle')}">
    <input type="hidden" name="id" value="{$arc.id}">
    <input type="hidden" name="type" value="{$type}">
	<div class="tab-content">
		<div id="basic" class="tab-pane fade in active">
            <div class="form-group">
                <label class="col-sm-1 control-label no-padding-right"> 链接分类 </label>
                <div class="col-sm-4">
                    <select class="form-control" id="category" name="category">
                        <option value="1">普通链接</option>
                        <option value="2">合作伙伴</option>
                    </select>
                </div>
            </div>
			
            
			<div class="form-group">
				<label class="col-sm-1 control-label no-padding-right"> 链接名称 </label>
				<div class="col-sm-4">
					<input type="text" name="title" value="{$arc.title}" class="col-sm-12" id="title"/>
				</div>
			</div>
            <div class="form-group">
                <label class="col-sm-1 control-label no-padding-right"> 链接地址 </label>
                <div class="col-sm-4">
                    <input type="text" name="url" value="{$arc.url}" class="col-sm-12" id="url"/>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-1 control-label no-padding-right"> 链接排序 </label>
                <div class="col-sm-4">
                    <input type="text" name="rank" value="{$arc.rank}" class="col-sm-12" id="text"/>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-1 control-label no-padding-right"> 链接状态 </label>
                <div class="col-sm-4">
                    <div class="checkbox">
                        <label style="padding:0 10px">
                            <input name="status" type="radio" class="ace" value="1" {if condition="$arc['status'] EQ 1"}checked{/if}>
                            <span class="lbl"> 正常显示 </span>
                        </label>
                        <label style="padding:0 10px">
                            <input name="status" type="radio" class="ace" value="0" {if condition="$arc['status'] EQ 0"}checked{/if}>
                            <span class="lbl"> 过期隐藏 </span>
                        </label>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-1 control-label no-padding-right"> 链接类型 </label>
                <div class="col-sm-4">
                    <div class="checkbox">
                        <label style="padding:0 10px">
                            <input name="linktype" type="radio" class="ace" value="t" checked id="wbtype" {if condition="$arc['linktype'] EQ t"}checked{/if}>
                            <span class="lbl"> 文本类型 </span>
                        </label>
                        <label style="padding:0 10px">
                            <input name="linktype" type="radio" class="ace" value="p" id="tptype" {if condition="$arc['linktype'] EQ p"}checked{/if}>
                            <span class="lbl"> 图片类型 </span>
                        </label>
                    </div>
                </div>
            </div>
            <div class="form-group {if condition="$arc['linktype'] EQ 1"}hidden{/if}"  id="litpicdiv">
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
    $('#tptype').click(function(){
        $('#litpicdiv').removeClass('hidden');
    });
    $('#wbtype').click(function(){
        $('#litpicdiv').addClass('hidden');
    });

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
        if($('#url').val()==''){
            layer.tips('链接必填','#url');
            return false;
        }
        if($('#tptype').is(':checked')){
            if($('#litpic_input').val()==''){
                layer.tips('请上传链接图标','#litpic_input');
                return false;
            }
        }
    }
    function complete(data){
        if(data.status==1){
            layer.msg(data.msg,{icon:6},function(){
                window.location.href=data.url;
            });
        }else{
            layer.msg(data.msg,{icon:1});
        }
    }

</script>
