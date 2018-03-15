{include file="public/head"/}
{include file="public/left"/}
<div class="main-content">
	<div class="main-content-inner">
{include file="public/nav_head"/}
                
<form action="{:url('arc/formctrl')}" method="post" id="formlist">
	<input type="hidden" name="table" value="{$navself['table']}">
	<input type="hidden" name="settype" id="settype">
	<div class="page-content">
		<div class="page-header">
			<div class="row maintop">
				<div class="col-xs-12">
                	<a class="btn btn-success borderno" id="addmgroup"><i class="fa fa-plus"></i> 添加组</a>
                </div>
			</div>
		</div>
		<div class="row">
			<div class="col-xs-12">
				<table id="simple-table" class="table  table-bordered table-hover">
					<thead>
						<tr>
							<th class="detail-col">ID</th>
							<th class="center">组名称</th>
							<th class="center">升级积分线</th>
							<th class="center">购买折扣</th>
							<th class="w100 center">操作</th>
						</tr>
					</thead>

					<tbody>
					{volist name="datalist" id="d"}
						<tr>
							<td class="center groupid">{$d.gid}</td>
							<td class="center">{$d.gname}</td>
							<td class="center">{$d.upgrade}</td>
							<td class="center">{$d.discount}</td>
							<td class="center">
								<div class="hidden-sm hidden-xs btn-group">
									<a class="editmgroup btn btn-xs btn-success" title="编辑">
										<i class="ace-icon fa fa-pencil bigger-120"></i></a>
                                    <a  class="delmgroup btn btn-xs btn-danger" mgroupid="{$d.gid}" title="删除">
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
	</div>
</form>
	</div>
</div>
{include file="public/foot"/}