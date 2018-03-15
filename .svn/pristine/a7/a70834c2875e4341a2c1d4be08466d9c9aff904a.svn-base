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
	            	<a class="btn btn-success borderno" id="addadmingroup"><i class="fa fa-plus"></i> 添加管理组</a>
	            </div>
			</div>
			<div class="row">
				<div class="col-xs-12">
					<table id="simple-table" class="table  table-bordered table-hover">
						<thead>
							<tr>
								<th class="detail-col">ID</th>
								<th>管理组名</th>
								<th class="center w50">状态</th>
								<th class="center w100">操作</th>
							</tr>
						</thead>

						<tbody>
						{foreach name="datalist" item="d"}
							<tr>
								<td class="center">{$d.id}</td>
								<td>{$d.title}</td>
								<td class="center">
									{if condition="$d['status']"}
									<img src="{$style}/images/yes.gif" alt="使用中" class="groupstatus" dataval="0">
									{else/} 
									<img src="{$style}/images/no.gif" alt="已禁用" class="groupstatus" dataval="1"> 
									{/if}
								</td>
								
								<td class="center">
									<div class="hidden-sm hidden-xs btn-group">
									<a class="btn btn-xs btn-success" href="{:url('admin/groupassign',['id'=>$d['id']])}" title="配置规则">
										<i class="ace-icon fa fa-cog bigger-130"></i></a>
									<a class="btn btn-xs btn-info editadmingroup" dataid="{$d.id}" title="编辑">
										<i class="ace-icon fa fa-pencil bigger-120"></i></a>
									<a  class="btn btn-xs btn-danger delgroup" href="javascript::void(0)" dataid="{$d.id}" title="删除">
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
$('.delgroup').click(function(){
	delone("{:url('delgroup')}",$(this).attr('dataid'));
});
</script>