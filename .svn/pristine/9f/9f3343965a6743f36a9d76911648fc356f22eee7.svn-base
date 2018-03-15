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
			<div class="form-group">
                <label class="col-sm-1 control-label no-padding-right"> 类　　型 </label>
               	<div class="col-sm-4">
					<select class="form-control" id="genre" name="genre">
                    <option value="1">商城顶部导航</option>
					</select>
				</div>
            </div>
            <div class="form-group">
                <label class="col-sm-1 control-label no-padding-right"> 名　　称 </label>
                <div class="col-sm-4">
                    <input type="text" name="name" class="col-sm-12" id="name"/>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-1 control-label no-padding-right"> 链　　接 </label>
                <div class="col-sm-4">
                    <input type="text" name="url" placeholder="格式：http://www.baidu.com" class="col-sm-12" id="url"/>
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
