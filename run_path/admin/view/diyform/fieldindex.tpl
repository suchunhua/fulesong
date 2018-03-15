{include file="public/head"/}
{include file="public/left"/}
<div class="main-content">
	<div class="main-content-inner">
		{include file="public/plug_head"/}
	    	<div class="page-content">
      			<div class="page-header">
					<div class="row maintop">
						<div class="col-xs-12">
							<a class="btn btn-success borderno" href="{:url('formlist',['formid'=>$formid])}">浏览数据</a>
		                	<a id="adddiyfield" class="btn btn-success borderno">添加字段</a>
		                	<a class="btn btn-info borderno" href="{:url('index')}">返回</a>
		                </div>
					</div>
				</div>
        <div class="tabbable">
		  <div class="tab-content">
		    <div id="basic" class="tab-pane fade active in">
		    	
		    	<table id="simple-table" class="table  table-bordered table-hover">
		    		<thead>
		    			<th class="center">显示名称</th>
		    			<th class="center">字段名</th>
		    			<th class="center">操作</th>
		    		</thead>
		            <tbody>
		               {volist name="datalist" id="d"}
		                <tr>
		                    <td  class="w100 center fieldname">{$d.0}</td>
		                    <td  class="w100 center">{$d.1}</td>
		                    <td class="w100 center">
		                    	<div class="hidden-sm hidden-xs btn-group">
									<a class="btn btn-xs btn-danger delfield">删除字段</a>
								</div>
							</td>
		                </tr>
		                {/volist}
		               
		            </tbody>
		        </table>
		      	<form method="post" action="{:url('delfield')}" id="delfield" style="display:none">
					<input type="hidden" name="formid" value="{$formid}">
					<input type="hidden" name="fieldname" id="fieldname" value="">
				</form>
		    </div>
		  </div>
        </div>
    </div>
	</div>
</div>
{include file="public/foot"/}
<script>
$('#adddiyfield').click(function(){
	layerframe("{:url('addfield',['formid'=>$formid])}",'添加会员','80%','90%');
});
$('.delfield').click(function(){
	var fieldname = $(this).parents('tr').find('.fieldname').html();
	$('#fieldname').val(fieldname);
 	layer.confirm('确定删除吗？', {icon: 3,'title':'风险提醒'}, function(index){
		layer.close(index);
		$('#delfield').ajaxSubmit({
	        success : complete,
	        dataType : 'json'
	    });
	});
});
function complete(data){
    if(data.status==0){
        layer.msg(data.msg,{icon:5});
    }
    if(data.status==1){
        layer.msg(data.msg,{icon:6},function(){
            window.location.reload();
        });
    }
}
</script>