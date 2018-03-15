{include file="public/head"/}
    {include file="public/left"/}
    <div class="main-content">
        <div class="main-content-inner">
            <div class="page-content">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="tabbable">
<form class="form-horizontal" role="form" method="post" id="form" action="{:url('editHandle')}">
    <input type="hidden" name="id" value="{$arc.id}">
    <div class="tab-content">
        <div class="form-group">
            <label class="col-sm-1 control-label no-padding-right"> 显示名称 </label>
            <div class="col-sm-4">
                <input type="text" name="name" id="name" value="{$arc.name}" class="col-xs-12 col-sm-12"/>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-1 control-label no-padding-right"> 访问路径 </label>
            <div class="col-sm-4">
                <input type="text" name="url" id="url" value="{$arc.url}" class="col-xs-12 col-sm-12"/>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-1 control-label no-padding-right"> 状　　态 </label>
            <div class="col-sm-4">
                <select class="form-control" id="status" name="status">
                    <option value="1" {if condition="$arc['status'] EQ 1"}selected{/if}>使用</option>
                    <option value="0" {if condition="$arc['status'] EQ 0"}selected{/if}>禁用</option>
                </select>
            </div>
        </div>
        <div class="clearfix">
        <div class="col-md-offset-1 col-md-9">
            <button class="btn btn-info" type="submit">
                提交
            </button>
        </div>
    </div>
    </div>
    
</form>
        

</div>
</div>
</div>    
</div>
</div>
</div>
{include file="public/foot"/}
<script type="text/javascript">
     $('#form').ajaxForm({
        success : complete,
        dataType : 'json'
    });
    function complete(data){
        if(data.status==0){
            layer.msg(data.msg,{icon:5});
        }
        if(data.status==1){
            layer.msg(data.msg,{icon:6},function(){
                window.location.href=data.url;
            });
        }
    }
</script>