{include file="public/head"/}
    {include file="public/left"/}
    <div class="main-content">
        <div class="main-content-inner">
            {include file="public/admin_rule"/}
            <div class="page-content">
                <div class="row">
                    <div class="col-sm-12 col-xs-12">
                        <div class="tabbable">
                            <form method="post" action="{:url('editHandle')}" id="form">
                            <input type="hidden" name="id" value="{$arc.id}">
                <table id="simple-table" class="table  table-bordered table-hover">
                    <tbody>
                         {if condition="$cjgl EQ 1"}
                        <tr>
                            <td  class="cfgtable w100">管理员组:　</td>
                            <td>
                                <select name="auth_group_id" id="auth_group_id">
                                {foreach name="group" item="g"}
                                <option value="{$g.id}" {if condition="$arc['auth_group_id'] EQ $g['id']"}selected{/if}>{$g.title}</option>
                                {/foreach}
                                </select>
                            </td>
                        </tr>
                        {/if}
                        <tr>
                            <td class="cfgtable w100">管理账号:　</td>
                            <td ><input type="text" value="{$arc.admin_name}" {if condition="$admin['auth_group_id'] EQ 1"}name="admin_name"{else/}readonly{/if}></td>
                        </tr>
                       
                        <tr>
                            <td  class="cfgtable w100">新密码:　</td>
                            <td><input type="text" name="pass" value=""></td>
                        </tr>
                        {if condition="$cjgl EQ 1"}
                        <tr>
                           <td  class="cfgtable w100">状态:　</td>
                            <td>
                                <div class="checkbox">
                                    <label style="padding:0 10px" class="w100">
                                        <input name="admin_status" type="radio" class="ace" value="1" checked>
                                        <span class="lbl"> 正常使用 </span>
                                    </label>
                                    <label style="padding:0 10px">
                                        <input name="admin_status" type="radio" class="ace" value="0">
                                        <span class="lbl"> 禁用 </span>
                                    </label>
                                </div>
                            </td>
                        </tr>
                        {/if}
                      
                       
                       
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
    var ue = UE.getEditor('body');
    $('#more_fjzd').click(function(){
        $('.fjzd').toggle(500);
    });
</script>
<script type="text/javascript">
            jQuery(function($) {
               $('#sidebar2').insertBefore('.page-content');
               $('.navbar-toggle[data-target="#sidebar2"]').insertAfter('#menu-toggler');
               $(document).on('settings.ace.two_menu', function(e, event_name, event_val) {
                 if(event_name == 'sidebar_fixed') {
                     if( $('#sidebar').hasClass('sidebar-fixed') ) {
                        $('#sidebar2').addClass('sidebar-fixed');
                        $('#navbar').addClass('h-navbar');
                     }
                     else {
                        $('#sidebar2').removeClass('sidebar-fixed')
                        $('#navbar').removeClass('h-navbar');
                     }
                 }
               }).triggerHandler('settings.ace.two_menu', ['sidebar_fixed' ,$('#sidebar').hasClass('sidebar-fixed')]);
            })
        </script>
