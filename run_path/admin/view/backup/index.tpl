{include file="public/head"/}
{include file="public/left"/}
<div class="main-content">
	<div class="main-content-inner">
		{include file="public/plug_head"/}
		<div class="page-content">
			<div class="row maintop">
				<div class="col-xs-12">
                	<a class="btn btn-success borderno" id="export"><i class="fa fa-plus"></i> 开始备份 </a>
                	<a class="btn btn-info borderno" href="{:url('index',['type'=>'import'])}"><i class="fa fa-sort"></i> 还原</a>
                </div>
			</div>
			
			<form id="export-form" method="post" action="{:url('export')}">
				<div class="row">
					<div class="col-xs-12">
						<table id="simple-table" class="table  table-bordered table-hover">
							<thead>
								<tr>
									<th width="48" class="hidden">
										<input class="check-all" checked="chedked" type="checkbox" value="">
									</th>
									<th>表名</th>
									<th width="120">数据量</th>
									<th width="120">数据大小</th>
									<th width="180">创建时间</th>
									<th width="160">备份状态</th>
									<th width="60">操作</th>
								</tr>
							</thead>
							<tbody>
							{volist name="datalist" id="arc"}
							<tr>
								<td class="num hidden">
									<input class="ids" checked="chedked" type="checkbox" name="tables[]" value="{$arc.name}"></td>
								<td class="tablename">{$arc.name}</td>
								<td>{$arc.rows}</td>
								<td>{$arc.data_length|format_bytes}</td>
								<td>{$arc.create_time}</td>
								<td class="info">未备份</td>
								<td class="action">
									<a class="btn btn-info btn-xs seotable">优化表</a>
								</td>
							</tr>
							{/volist}
							</tbody>
						</table>
					</div>
					<div class="center">{$pagelist}</div>
				</div>
			</form>
		</div>
	</div>
</div>

<form method="post" action="{:url('optimize')}" id="optimize" style="display:none">
	<input type="hidden" name="tables" id="tablename" value="">
</form>
{include file="public/foot"/}

<script>
	$('.seotable').click(function(){
		var tablename = $(this).parents('tr').find('.tablename').html();
		$('#tablename').val(tablename);
		$('#optimize').ajaxSubmit({
	        success : complete,
	        dataType : 'json'
	    });
	});

	function complete(data){
        if(data.status==0){
            layer.msg(data.msg,{icon:5});
        }
        if(data.status==1){
            layer.msg(data.msg,{icon:6},function(){
                window.location.reload();
            });
        }
    }
</script>
<script type="text/javascript">
(function($){
    var $form = $("#export-form"), $export = $("#export"), tables
        $optimize = $("#optimize"), $repair = $("#repair");

    $optimize.add($repair).click(function(){
        $.post(this.href, $form.serialize(), function(data){
            if(data.code){
                updateAlert(data.msg,'alert-success');
            } else {
                updateAlert(data.msg,'alert-error');
            }
            setTimeout(function(){
                $('#top-alert').find('button').click();
                $(that).removeClass('disabled').prop('disabled',false);
            },1500);
        }, "json");
        return false;
    });

    $export.click(function(){
        $export.parent().children().addClass("disabled");
        $export.html("正在发送备份请求...");
        $.post(
            $form.attr("action"),
            $form.serialize(),
            function(data){
                if(data.code){
                    tables = data.data.tables;
                    $export.html(data.msg + "开始备份，请不要关闭本页面！");
                    backup(data.data.tab);
                    window.onbeforeunload = function(){ return "正在备份数据库，请不要关闭！" }
                } else {
                    updateAlert(data.msg,'alert-error');
                    $export.parent().children().removeClass("disabled");
                    $export.html("立即备份");
                    setTimeout(function(){
    	                $('#top-alert').find('button').click();
    	                $(that).removeClass('disabled').prop('disabled',false);
    	            },1500);
                }
            },
            "json"
        );
        return false;
    });

    function backup(tab, status){
        status && showmsg(tab.id, "开始备份...(0%)");
        $.get($form.attr("action"), tab, function(data){
            if(data.code){
                var info = data.data;
                showmsg(tab.id, data.msg);

                if(!$.isPlainObject(info.tab)){
                    $export.parent().children().removeClass("disabled");
                    $export.html("备份完成，点击重新备份");
                    window.onbeforeunload = function(){ return null }
                    return;
                }
                backup(info.tab, tab.id != info.tab.id);
            } else {
                updateAlert(data.msg,'alert-error');
                $export.parent().children().removeClass("disabled");
                $export.html("立即备份");
                setTimeout(function(){
	                $('#top-alert').find('button').click();
	                $(that).removeClass('disabled').prop('disabled',false);
	            },1500);
            }
        }, "json");

    }

    function showmsg(id, msg){
        $form.find("input[value=" + tables[id] + "]").closest("tr").find(".info").html(msg);
    }
})(jQuery);
</script>

