{include file="public/head"/}
{include file="public/left"/}
<div class="main-content">
	<div class="main-content-inner">
        {include file="public/admin_rule"/}
<form action="{:url('addHandle')}" method="post" id="formlist">
	<div class="page-content">
			<div class="row maintop">
				<div class="col-xs-12 col-sm-12">
               	 	<small class="sl-left10"> 等级 ：</small>
                	<small>
                  	<select name="pid">
                      <option value="0"> 默认顶级 </option>
                      {volist name="toplist" id="t"}
                      <option value="{$t.id}">{$t.title}</option>
                      {/volist}              
                    </select>
                </small>
                <small class="sl-left10">　名称：</small>
                <small><input name="title" id="title" class="rule" placeholder=" 输入名称"></small>
                <small class="sl-left10">　路径：</small>
                <small><input name="name" id="name" class="rule" placeholder="操作路径"></small>
                <small><button class="btn btn-xs btn-danger ruleadd">添加权限</button></small>
      </div>
			</div>
		<div class="row">
			<div class="col-xs-12">
				<table class="table  table-bordered table-hover">
					<thead>
						<tr>
							<th>名称</th>
							<th class="center">路径</th>
							<th class="center w100">操作</th>
						</tr>
					</thead>
					<tbody>
					{foreach name="datalist" item="d"}
						<tr {if condition="$d['level'] EQ 0"}class="rules"{/if}>
							<td>{if condition="$d['level'] EQ 1"}　　{/if}{$d.title}</td>
							<td class="center">{$d.name}</td>						
							<td class="center">
								<div class="hidden-sm hidden-xs btn-group">
							<a  class="btn btn-xs btn-info" href="{:url('edit',['type'=>$type,'id'=>$d['id']])}" title="编辑">
									<i class="ace-icon fa fa-pencil bigger-120"></i></a>
								<a  class="btn btn-xs btn-danger delrule" title="删除" dataid ="{$d.id}">
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
</div>
{include file="public/foot"/}
<script type="text/javascript">
     $('#formlist').ajaxForm({
        beforeSubmit : check,
        success : complete,
        dataType : 'json'
    });
    function check(){
       
    }
    function complete(data){
        if(data.status==0){
            layer.msg(data.msg,{icon:5});
        }
        if(data.status==1){
            layer.msg(data.msg,{icon:6,time:1500},function(){
                window.location.reload();
            });
        }
    }
$('.delrule').click(function(){
	delone("{:url('del')}",$(this).attr('dataid'));
});
</script>