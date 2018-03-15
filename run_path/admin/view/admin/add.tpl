{include file="public/head"/}
	{include file="public/left"/}
	<div class="main-content">
		<div class="main-content-inner">
			{include file="public/admin_rule"/}
						<div class="tabbable">
<form class="form-horizontal" method="post" id="addform" action="{:url('addHandle')}">
	<div class="tab-content">
		<div id="basic" class="tab-pane fade in active">
            <div class="form-group">
                <label class="col-sm-1 control-label no-padding-right"> 管理员群组 </label>
                <div class="col-sm-4">
                    <select class="form-control" id="auth_group_id" name="auth_group_id">
                        {foreach name="grouplist" item="g"}
                        <option value="{$g.id}" class="bgccc">{$g.title}</option>
                        {/foreach}
                    </select>
                </div>
            </div>
			<div class="form-group">
				<label class="col-sm-1 control-label no-padding-right"> 管理员账号 </label>
				<div class="col-sm-4">
					<input type="text" name="admin_name" placeholder="管理员账号只能是字母" class="col-sm-12" id="admin_name"/>
				</div>
			</div>
            <div class="form-group">
                <label class="col-sm-1 control-label no-padding-right"> 管理员密码 </label>
                <div class="col-sm-4">
                    <input type="text" name="admin_pass" placeholder="密码" class="col-sm-12" id="admin_pass"/>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-1 control-label no-padding-right"> 管理员状态 </label>
                <div class="col-sm-4">
                    <div class="checkbox">
                        <label style="padding:0 10px" class="w100">
                            <input name="admin_status" type="radio" class="ace" value="1" checked>
                            <span class="lbl"> 正常使用 </span>
                        </label>
                        <label style="padding:0 10px">
                            <input name="admin_status" type="radio" class="ace" value="0">
                            <span class="lbl"> 禁用 </span>
                        </label>
                    </div>
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
<script>
    $('#addform').ajaxForm({
        beforeSubmit : check,
        success : complete,
        dataType : 'json'
    });
    function check(){
        
    }
    function complete(data){
        if(data.status==1){ 
            layer.msg(data.msg,{icon:6,time:1500},function(){
                window.location.href=data.url;
            });
        }else{
            layer.msg('添加失败',{icon:5});
        }
    }
</script>