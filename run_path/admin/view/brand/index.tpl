{include file="public/head"/}
{include file="public/left"/}
<div class="main-content">
	<div class="main-content-inner">
		{include file="public/plug_head"/}
                
<form action="{:url('formctrl')}" method="post" id="formlist">
	<div class="page-content">
		<div class="row maintop">
			<div class="col-xs-12">
            	<a href="{:url('add')}" class="btn btn-success borderno"><i class="fa fa-plus"></i> 添加品牌</a>
            	<a  class="btn btn-info borderno" id="setrank"><i class="fa fa-sort"></i> 品牌排序</a>
            </div>
		</div>
		<div class="row">
			<div class="col-xs-12">
				<table id="simple-table" class="table  table-bordered table-hover  vmd">
					<thead>
						<tr>
							<th class="detail-col bdlno">ID</th>
							<th class="center">名称</th>
							<th class="center">品牌Logo</th>
							<th class="center">排序</th>
							<th  class="w100 center">操作</th>
						</tr>
					</thead>
					<tbody>
					{volist name="datalist" id="arc"}
						<tr id="{$arc.id}">
							<td class="center bdlno">{$arc.id}</td>
							<td class="center">{$arc.title}</td>
							<td class="center"><img src="{$arc.litpic}" height="60"></td>
							<td class="center"><input type="text" name="rank[{$arc.id}]" value="{$arc.rank}"></td>
							<td class="center">
                                <a  class="btn btn-xs btn-info" href="{:url('edit',['id'=>$arc['id']])}" title="编辑">
                                	<i class="ace-icon fa fa-pencil"></i></a>
                                <a class="btn btn-xs btn-danger delbtn" data-id="{$arc.id}" title="删除">
									<i class="ace-icon fa fa-trash-o bigger-120"></i></a>
							</td>
						</tr>
					{/volist}	
					</tbody>
				</table>
			</div>
		</div>
	</div>
</form>
	</div>
</div>
{include file="public/foot"/}
<script>
	$('#setrank').click(function(){
		ajaxset();
	});
	
	function ajaxset(){
		$('#formlist').ajaxSubmit({
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
<script>
	$('.delbtn').click(function(){
		var delid = $(this).attr('data-id');
		layer.confirm('确定删除吗？', {icon: 3,'title':'友情提示'}, function(index){
			layer.close(index);
			$.ajax({
			   url:"{:url('delbrand')}",
			   data:{'id':delid},
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

</script>