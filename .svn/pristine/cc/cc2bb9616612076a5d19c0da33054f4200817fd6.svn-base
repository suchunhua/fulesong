{include file="public/head"/}
{include file="public/left"/}
<div class="main-content">
	<div class="main-content-inner">
		{include file="public/plug_head"/}
	    	<div class="page-content">
      			<div class="page-header">
					<div class="row maintop">
						<div class="col-xs-12">
		                	<a id="addfield" class="btn btn-success borderno">添加字段</a>
		                	<button  class="btn btn-info borderno" id="setrank">表单生成</button>
		                	<a class="btn btn-success borderno" href="{:url('formlist',['id'=>$formid])}">返回</a>
		                </div>
					</div>
				</div>
        <div class="tabbable">
		  <div class="tab-content">
		    <div id="basic" class="tab-pane fade active in">
		    	{volist name="datalist" id="d"}
		    	<div class="form-group mygroup">
		          <label class="col-sm-1 control-label delpropmt">{$d.0}</label>
		          <div class="col-sm-1"><input type="text" class="col-sm-12" readonly class="delfield" value="{$d.1}"></div>
		          <div class="col-sm-1"><input type="text" class="col-sm-12" readonly value="{$d.2}"></div>
		          <div class="col-sm-6"><input type="text" class="col-sm-12" readonly value="{$d.3}"></div>
		          <div class="col-sm-1"><a class="ky_btn delthis" style="border-radius: 4px">删除字段</a> </div>
		      	</div>
		      	{/volist}
		    </div>
		  </div>
        </div>
    </div>
	</div>
</div>
{include file="public/foot"/}
<script>
$('#addfield').click(function(){
	layerframe("{:url('addfield',['formid'=>$formid])}",'添加会员','80%','90%');
});
</script>