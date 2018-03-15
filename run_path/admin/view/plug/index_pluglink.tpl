{include file="public/head"/}
{include file="public/left"/}
<div class="main-content">
	<div class="main-content-inner">
		{include file="public/plug_head"/}
<form action="{:url('formctrl')}" method="post" id="formlist">
		<input type="hidden" name="table" value="pluglink">
		<div class="page-content">
			<div class="row maintop">
				<div class="col-xs-3 pd0005">
	            	<a href="{:url('plug/add',['type'=>$type])}" class="btn btn-success borderno">
	                    	<i class="fa fa-plus"></i> 新增</a>
	                <button class="btn btn-xs btn-info mt10 p46" id="setrank"><i class="fa fa-sort"></i> 排序</button>
	            </div>
            	<div class="col-xs-9"><div class="pull-right">{$pagelist}</div></div>
			</div>

			<div class="row">
				<div class="col-xs-12">
					<div class="row">
						<div class="col-xs-12">
							<table id="simple-table" class="table  table-bordered table-hover">
								<thead>
									<tr>
										<th class="detail-col">ID</th>
										<th class="center">标题</th>
										<th class="center">链接</th>
										<th class="center">排序</th>
										<th class="center">类型</th>
										<th class="center">状态</th>
										<th class="center w100">操作</th>
									</tr>
								</thead>

								<tbody>
								{foreach name="datalist" item="d"}
									<tr>
										<td class="center pt16">{$d.id}</td>
										<td class="center pt16"><a href="{$d.url}" target="_blank">{$d.title}</a></td>
										<td class="center pt16"><a href="{$d.url}" target="_blank">{$d.url}</a></td>
										<td class="center"><input type="text" name="rank[{$d.id}]" value="{$d.rank}" style="width:100px" class="text-center"></td>
										<td class="center pt16">{if condition="$d.linktype EQ t"}文本链接{else/}图片链接{/if}</td>
										<td class="center pt16">{if condition="$d.status EQ 1"}正常显示{else/}过期隐藏{/if}</td>

										<td class="center ">
											<div class="hidden-sm hidden-xs btn-group">
								<a  class="btn btn-xs btn-info" href="{:url('edit',['type'=>$type,'id'=>$d['id']])}" title="编辑">
									<i class="ace-icon fa fa-pencil bigger-120"></i></a>
								<a  class="btn btn-xs btn-danger delthis" title="删除" data-id ="{$d.id}">
									<i class="ace-icon fa fa-trash-o bigger-120"></i></a>
											</div>
										</td>
									</tr>
								{/foreach}	
								</tbody>
							</table>
						</div>
						<div class="center">{$pagelist}</div>
					</div>
				</div>
			</div>
		</div>
</form>
	</div>
</div>
{include file="public/foot"/}
<script>
$('.delthis').click(function(){
	var delid = $(this).attr('data-id');
	layer.confirm('确定删除吗？', {icon: 3,'title':'友情提示'}, function(index){
		layer.close(index);
		$.ajax({
		   url:"{:url('del')}",
		   data:{'id':delid,'table':'pluglink'},
		   type:'POST',
		   dataType:'json',
		   success:function(data){
		      if(data.status == 1){
		      	 layer.msg(data.msg,{icon:6,time:1500},function(){
					window.location.reload();
		      	 });
		      }else{
		      	layer.alert(data.msg,{icon:5});
		      }
		   }
		});
	});	
});
$('#setrank').click(function(){
	ajaxset();
});
function ajaxset(){
		$('#formlist').ajaxForm({
			success : complete,
			dataType : 'json'
		});
	}
	function complete(data){
		if(data.status == 1){
			layer.msg(data.msg,{icon:6},function(){
				window.location.reload();
			});
		}else{
			layer.msg(data.msg,{icon:5});
		}
	}
</script>