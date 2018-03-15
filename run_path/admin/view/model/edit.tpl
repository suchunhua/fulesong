{include file="public/head"/}
{include file="public/left"/}
    <div class="main-content">
        <div class="main-content-inner">
            {include file="public/model_head"/}
            <div class="page-content" style="padding:0 0 0 0">
                <form method="post" action="{:url('changename')}" id="upModelName">
	                <input type="hidden" name="id" value="{$arc.id}">
					<table class="table table-bordered table-hover bdlno">
					    <tbody>
					    	<tr style="background: #edf4f9"><td colspan="3" class="bdlno"><b>频道重命名</b></td></tr>
					        <tr><td class="cfgtable w100 bdlno">新频道名:　</td>
						        <td >
						        	<input type="text" name="name" id="name" class="col-md-3" value="{$arc.name}">
						        	<button type="submit" class="btn btn-primary" style="padding:2px 10px 1px 10px">确定</button>
						        </td>
					        </tr>
					    </tbody>
					</table>
				</form>
				<div class="alert alert-block alert-success" style="margin-bottom: 0px">附件字段 ： 
				    <a href="javascript:void(0)" id="addfield" modelid="{$arc.id}">新增字段</a>
				</div>
    			<table class="table  table-bordered table-hover bdlno">
                    <thead>
                        <tr>
                            <th class="center bdlno">字段名</th>
                            <th class="center">字段值</th>
                            <th class="center">类型</th>
                            <th class="center">默认值</th>
                            <th  class="center" style="width:120px">操作</th>
                        </tr>
                    </thead>
                    <tbody>
                    	{volist name="fieldlist" id="f"}
                        <tr>
                            <td class="center bdlno">{$f.comment}</td>
                            <td class="center fieldname">{$f.field}</td>
                            <td class="center">{$f.type}</td>
                            <td class="center">
                                {if condition="$f['def'] NEQ '@'"}{$f.def}{/if}
                            </td>
                            <td class="center">
                                <a class="delfield" field="{$f.field}" modelid="{$arc.id}">[ 删除 ]</a>
                            </td>
                        </tr>
                    	{/volist}   
                    </tbody>
                </table>
			</div>
		</div>
	</div>
{include file="public/foot"/}