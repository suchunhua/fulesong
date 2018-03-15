{include file="public/head"/}
    {include file="public/left"/}
    <div class="main-content">
        <div class="main-content-inner">
            {include file="public/admin_rule"/}
            <div class="page-content">
                
                <div class="row">
                    <div class="col-sm-12 col-xs-12">
                        <div class="tabbable">
                            <form method="post" action="{:url('editHadnle')}" id="form">
                            <input type="hidden" name="id" value="{$arc.id}">
                <table id="simple-table" class="table  table-bordered table-hover">
                    <tbody>
                        <tr>
                            <td  class="cfgtable w100">权限等级:　</td>
                            <td>
                                <select name="pid" id="pid">
                                <option value="0">顶级权限</option>
                                {foreach name="rules" item="r"}
                                <option value="{$r.id}" {if condition="$r['id'] EQ $arc['pid']"}selected{/if}>{$r.title}</option>
                                {/foreach}
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td class="cfgtable w100">权限名称:　</td>
                            <td ><input type="text" value="{$arc.title}" name="title"></td>
                        </tr>
                        <tr>
                            <td class="cfgtable w100">权限路径:　</td>
                            <td ><input type="text" name="name" value="{$arc.name}"></td>
                        </tr>
                     
                       
                        <tr><td><input type="submit" value="提交"></td></tr>
                    </tbody>
                </table>
                            </form>
                         
                        </div>
                    </div>
                </div>
                
                    
            </div>
        </div>
    </div>
{include file="public/foot"/}
<script type="text/javascript">
   $('#form').ajaxForm({
   		success  : complete,
   		dataType : 'json'
   });
   function complete(data){
   		if(data.status==1){
   			layer.msg(data.msg,{icon:6,time:1500},function(){
   				window.location.href=data.url;
   			});
   		}else{
   			layer.msg(data.msg,{icon:5,time:1500});
   		}
   }
</script>
