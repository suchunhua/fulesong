{include file="public/head"/}
{include file="public/left"/}
<div class="main-content">
	<div class="main-content-inner">
		{include file="public/plug_head"/}
		<div class="page-content">
			<div class="row maintop">
				<div class="col-xs-12">
                	<a class="btn btn-success borderno" href="{:url('index',['type'=>'index'])}"><i class="fa fa-plus"></i> 返回备份 </a>
                	<a class="btn btn-info borderno" href="{:url('index',['type'=>'import'])}"><i class="fa fa-sort"></i> 还原</a>
                </div>
			</div>
			<div class="row">
				<div class="col-xs-12">
					<table id="simple-table" class="table  table-bordered table-hover">
						<thead>
							<tr>
								<th width="200">备份名称</th>
								<th width="80">卷数</th>
								<th width="80">压缩</th>
								<th width="80">数据大小</th>
								<th width="200">备份时间</th>
								<th>状态</th>
								<th width="120">操作</th>
							</tr>
						</thead>
						<tbody>
						{volist name="datalist" id="data"}
							<tr>
								<td>{$data.time|date='Ymd-His',###}</td>
								<td>{$data.part}</td>
								<td>{$data.compress}</td>
								<td>{$data.size|format_bytes}</td>
								<td>{$key}</td>
								<td>-</td>
								<td class="action">
									<a class="db-import" href="{:url('import?time='.$data['time'])}">还原</a>
									&nbsp;
									<a class="ajax-get confirm" href="{:url('del?time='.$data['time'])}">删除</a>
								</td>
							</tr>
						{/volist}
						</tbody>
				</table>
				</div>
			</div>
		</div>
	</div>
</div>
{include file="public/foot"/}
<script type="text/javascript">
    $(".db-import").click(function(){
        var self = this, status = ".";
        $.get(self.href, success, "json");
        window.onbeforeunload = function(){ return "正在还原数据库，请不要关闭！" }
        return false;
    
        function success(data){
            if(data.code){
                if(data.data.gz){
                    data.msg += status;
                    if(status.length === 5){
                        status = ".";
                    } else {
                        status += ".";
                    }
                }
                $(self).parent().prev().text(data.msg);
                if(data.data.part){
                    $.get(self.href, 
                        {"part" : data.data.part, "start" : data.data.start}, 
                        success, 
                        "json"
                    );
                }  else {
                    window.onbeforeunload = function(){ return null; }
                }
            } else {
                updateAlert(data.msg,'alert-error');
            }
        }
    });
</script>