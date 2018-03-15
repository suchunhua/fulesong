{include file="public/head"/}
{include file="public/left"/}
<div class="main-content">
	<div class="main-content-inner">
		{include file="public/plug_head"/}
<form action="{:url('arc/formctrl')}" method="post" id="formlist">
	<input type="hidden" name="type" value="{$type}">
		<div class="page-content">
			<div class="row maintop">
				<div class="col-xs-12">
                	<a href="{:url('plug/add',['type'=>$type])}" class="btn btn-success borderno">
                		<i class="fa fa-plus"></i> 新增</a>
                </div>
			</div>

			<div class="row">
				<div class="col-xs-12">
					<!-- PAGE CONTENT BEGINS -->
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
										<th class="center">操作</th>
									</tr>
								</thead>

								<tbody>
								{foreach name="datalist" item="d"}
									<tr>
										<td class="center">{$d.id}</td>
										<td class="center"><a href="{$d.url}" target="_blank">{$d.title}</a></td>
										<td class="center"><a href="{$d.url}" target="_blank">{$d.url}</a></td>
										<td class="center">{$d.rank}</td>
										<td class="center">{if condition="$d.linktype EQ t"}文本链接{else/}图片链接{/if}</td>
										<td class="center">{if condition="$d.status EQ 1"}正常显示{else/}过期隐藏{/if}</td>

										<td class="center">
											<div class="hidden-sm hidden-xs btn-group">
							<a  class="btn btn-xs btn-info" href="{:url('edit',['type'=>$type,'id'=>$d['id']])}" title="编辑">
									<i class="ace-icon fa fa-pencil bigger-120"></i></a>
								<a  class="btn btn-xs btn-danger" title="删除">
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
<script src="_JS_/jquery.form.js"></script>
<script src="_JS_/layer.js"></script>
<script>
	$('#checkall').click(function(){
		$(this).is(":checked") ? $('.checksingle').prop('checked',true) : $('.checksingle').prop('checked',false);
	});
	$('#setrank').click(function(){
		$('#settype').val('setrank');
		ajaxset();
	});
	$('#setdel').click(function(){
		$('#settype').val('setdel');
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