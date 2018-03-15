{include file="public/head"/}
{include file="public/left"/}
<div class="main-content">
	<div class="main-content-inner">
		{include file="public/nav_head"/}
		<form action="{:url('arc/formctrl')}" method="post" id="formlist">
			<input type="hidden" name="table" value="{$navself['table']}">
			<input type="hidden" name="settype" id="settype">
			<div class="page-content">
				<div class="row maintop">
					<div class="col-xs-1 pd0005">
		            	<a class="btn btn-xs btn-success" id="addmember"><i class="fa fa-plus"></i> 添加</a>
		            </div>
		            <div class="col-xs-3">
		            	<div class="input-group mt7">
							<div class="input-group-addon pdno">
								<select class="jiansuo smember">
									<option value="e">按邮箱</option>
									<option value="p">按手机</option>
									<option value="n">按昵称</option>
								</select>
							</div>
							<input type="text" class="form-control search-query jsinput" placeholder="输入会员邮箱">
							<span class="input-group-btn">
								<button type="button" class="btn btn-purple btn-sm pd4550 jsmember">
									<span class="ace-icon fa fa-search icon-on-right bigger-110"></span>
									检索
								</button>
							</span>
						</div>
		            </div>
		            <div class="col-xs-8"><div class="pull-right">{$pagelist}</div></div>
				</div>
				<div class="row">
					<div class="col-xs-12">
						<table class="table  table-bordered table-hover">
							<thead>
								<tr>
									<th class="detail-col">ID</th>
									<th class="w100 center">昵称</th>
									<th class="w100 center">邮箱</th>
									<th class="w100 center">手机</th>
									<th class="w100 center">会员组</th>
									<th class="w100 center">注册时间</th>
									<th class="w30 center">状态</th>
									<th class="w50 center">操作</th>
								</tr>
							</thead>
							<tbody>
								{volist name="datalist" id="d"}
								<tr dataid="{$d.id}">
									<td class="center memberid pt12">{$d.id}</td>
									<td class="center pt12">{$d.nickname}</td>
									<td class="center pt12"><a href="#">{$d.email}</a></td>
									<td class="center pt12"><a href="#">{$d.phone}</a></td>
									<td class="center pt12">{$d.gname}</td>
									<td class="center pt12">{$d.regtime|date="Y-m-d",###}</td>
									<td class="center pt12">
										{if condition="$d['status']"}
											<img src="{$style}/images/yes.gif" title="正常使用" class="userstatus" dataval="0">
										{else/} 
											<img src="{$style}/images/no.gif" title="已被禁用" class="userstatus" dataval="1"> 
										{/if}
									</td>
									<td class="center">
										<div class="hidden-sm hidden-xs btn-group">
											<a class="editmember btn btn-xs btn-success" memberid="{$d.id}" title="编辑">
												<i class="ace-icon fa fa-pencil bigger-120"></i></a>
		                                    <a class="delmember btn btn-xs btn-danger" memberid="{$d.id}" title="删除">
		                                    	<i class="ace-icon fa fa-trash-o bigger-120"></i></a>
										</div>
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
<script src="{$style}/js/goods.js"></script>
