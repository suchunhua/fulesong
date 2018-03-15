{include file="public/head"/}
{include file="public/left"/}
<div class="main-content">
	<div class="main-content-inner">
		{include file="public/model_head"/}
                
<form action="{:url('arc/formctrl')}" method="post" id="formlist">
	<input type="hidden" name="table" value="{$navself['table']}">
	<input type="hidden" name="settype" id="settype">
	<div class="page-content" style="padding:0">
		<div class="row">
			<div class="col-xs-12">
				<table id="simple-table" class="table  table-bordered table-hover bdlno">
					<thead>
						<tr>
							<th class="detail-col bdlno">ID</th>
							<th class="center">名称</th>
							<th class="center">频道介绍</th>
							<th class="center"><img src="{$style}/images/yes.gif"> 启用 | 禁用 <img src="{$style}/images/no.gif"></th>
							<th  class="w100 center">操作</th>
						</tr>
					</thead>
					<tbody>
					{volist name="cals" id="arc"}
						<tr id="{$arc.id}">
							<td class="center bdlno">{$arc.id}</td>
							<td class="center"><a href="#">{$arc.name}</a></td>
							<td class="center">{$arc.desc}</td>
							<td class="center">
								{if condition="$arc['status']"}
									<img src="{$style}/images/yes.gif" alt="使用中" class="setcal" dataval="0">
								{else/} 
									<img src="{$style}/images/no.gif" alt="已禁用" class="setcal" dataval="1"> 
								{/if}
							</td>
							<td class="center">
                                <a  class="btn btn-xs btn-info" href="{:url('edit',['id'=>$arc['id']])}" title="编辑">
                                	<i class="ace-icon fa fa-pencil"></i></a>
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