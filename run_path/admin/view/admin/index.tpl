{include file="public/head"/}
{include file="public/left"/}
<div class="main-content">
	<div class="main-content-inner">
        {include file="public/admin_rule"/}
<form action="{:url('arc/formctrl')}" method="post" id="formlist">
	<input type="hidden" name="table" value="{$navself['table']}">
	<input type="hidden" name="settype" id="settype">
	<div class="page-content">
		<div class="page-header">
			<div class="row maintop">
				<div class="col-xs-12">
	            	<a href="{:url('add')}" class="btn btn-success borderno"><i class="fa fa-plus"></i> 添加管理员</a>
	            </div>
			</div>
			<div class="row">
				<div class="col-xs-12">
					<table id="simple-table" class="table  table-bordered table-hover">
						<thead>
							<tr>
								<th class="detail-col">ID</th>
								<th class="center">管理员账号</th>
								<th class="center">管理员组</th>
								<th class="center">管理员状态</th>
								<th class="center">上次登录地点</th>
								<th class="center">上次登录时间</th>
								<th class="center w100">操作</th>
							</tr>
						</thead>

						<tbody>
						{foreach name="datalist" item="d"}
							<tr>
								<td class="center">{$d.id}</td>
								<td class="center">{$d.admin_name}</td>
								<td class="center">{$d.title}</td>
								{if condition="$d['admin_status'] EQ 1"}<td class="center">正常使用</td>
								{else/}<td class="center red">禁用</td>{/if}

								<td class="center">{$d.prevarea}</td>
								<td class="center">{$d.prevtime|date="Y-m-d H:i",###}</td>
								<td class="center">
									<div class="hidden-sm hidden-xs btn-group">
					<a  class="btn btn-xs btn-info" href="{:url('admin/edit',['id'=>$d['id']])}" title="编辑">
                 					<i class="ace-icon fa fa-pencil bigger-120"></i></a>
					<a  class="btn btn-xs btn-danger deladmin" href="javascript::void(0)" dataid="{$d.id}" title="删除">
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
</form>

</div>
{include file="public/foot"/}
<script>
$('.deladmin').click(function(){
	delone("{:url('del')}",$(this).attr('dataid'));
});
</script>