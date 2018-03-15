{include file="public/head"/}
{include file="public/left"/}
<div class="main-content">
	<div class="main-content-inner">
		{include file="public/nav_head"/}
		<div class="page-content">
			<div class="row maintop">
				<div class="col-xs-12">
                	<a href="{:url('add')}" class="btn btn-success borderno"><i class="fa fa-plus"></i> 新增</a>
                	{if condition="$navlist"}
                	<a  class="btn btn-info borderno" id="setrank"><i class="fa fa-sort"></i> 排序</a>
                	{/if}
                </div>
			</div>
			<form action="{:url('setrank')}" method="post" id="form">
				<div class="row">
					<div class="col-xs-12">
						<table id="simple-table" class="table  table-bordered table-hover">
							<thead>
								<tr>
									<th class="detail-col">ID</th>
									<th>标题</th>
									<th>排序</th>
									<th class="w100">频道</th>
									<th style="width:130px">操作</th>
								</tr>
							</thead>
							<tbody>
							{volist name="navlevel" id="nav"}
								<tr {if condition="$nav['level'] EQ 0"}class="one"{/if} {if condition="$nav['level'] EQ 1"}class="two"{/if} {if condition="$nav['level'] EQ 2"}class="three"{/if} {if condition="$nav['level'] EQ 3"}class="four"{/if}>
									<td class="center" style="padding: 16px 0 0 0px;">{$nav.id}</td>
									<td style="padding: 16px 0 0 10px;">
		                                {if condition="$nav['level'] EQ 1"}　{/if}
		                                {if condition="$nav['level'] EQ 2"}　　{/if}
		                                {if condition="$nav['level'] EQ 3"}　　　{/if}
		                                <img src="{$style}/images/plus.gif" class="zkgb">{$nav.navname}
		                            </td>
									<td class="hidden-480" style="width:120px"><input type="text" name="rank[{$nav.id}]" value="{$nav.rank}" style="width:100px"></td>
									<td style="padding: 16px 0 0 10px;">{$nav.name}</td>
									<td style="padding: 12px 0 0 10px;">
										<div class="hidden-sm hidden-xs btn-group">
											<a class="btn btn-xs btn-success" href="/category_{$nav.id}.html" 	target="_blank">
												<i class="ace-icon fa fa-eye bigger-120"></i></a>
											<a class="btn btn-xs btn-info" href="{:url('add',['id'=>$nav['id']])}">
												<i class="ace-icon fa fa-plus bigger-120"></i></a>
											<a class="btn btn-xs btn-warning" href="{:url('edit',['id'=>$nav['id']])}">
												<i class="ace-icon fa fa-pencil bigger-120"></i></a>
											<a class="btn btn-xs btn-danger delbtn" id="{$nav.id}">
												<i class="ace-icon fa fa-trash-o bigger-120"></i></a>
										</div>
									</td>
								</tr>
							{/volist}	
							</tbody>
						</table>
					</div>
					<div class="center">{$pagelist}</div>
				</div>
			</form>
		</div>
	</div>
</div>
{include file="public/foot"/}

<script>
	$('#setrank').click(function(){
		$('#form').ajaxSubmit({
			success : complete,
			dataType : 'json'
		});
	});
	function complete(data){
		if(data.status == 0){
			layer.msg(data.msg,{icon:5,time:1500});
		}
		if(data.status == 1){
			layer.msg(data.msg,{icon:6,time:1500},function(){
				window.location.reload();
			});
		}

	}
	$('.delbtn').click(function(){
		var navid = $(this).prop('id');
		layer.confirm('确定删除吗？', {icon: 3,'title':'友情提示'}, function(index){
			layer.close(index);
			$.ajax({
			   url:"{:url('del')}",
			   data:{'id':navid},
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