{include file="public/head"/}

        <div class="main-container ace-save-state" id="main-container">
            {include file="public/left"/}
            <div class="main-content">
                <div class="main-content-inner">
                    <div class="page-content" >
                        <div class="row" >
                        	<div class="col-sm-12" style="background: #fff; padding-top: 15px">
                            <table class="table  table-bordered table-hover vmd">
							<thead>
								<tr>
									<th>商品</th>
									<th class="center">单价(元)</th>
									<th class="center">数量</th>
									<th class="center">小计(元)</th>
								</tr>
							</thead>
							<tbody>
							{volist name="orderlist" id="order"}
								<tr id="{$order.order}"> 
									<td colspan="4" style="height: 50px; background: #eee">
										订单号：{$order.order}   
										订单时间：{$order.ordertime|date="Y-m-d H:i:s",###}
									</td>
									
								</tr>
								{volist name="order.orderdata" id="arc"}
								<tr class="{$order.order}">
									<td>　　　　<img src="{$arc.litpic}" width="80" height="80">　{$arc.title}</td>
									<td class="center sprice">{$arc.price}</td>
									<td class="center">{$arc.cartnum}</td>
									<td class="center">{$arc|minprice}</td>
								</tr>
								{/volist}
							{/volist}
							</tbody>
						</table>
							
							</div>
                        </div>
                    </div>
                </div>
            </div>
{include file="public/foot"/}

<script>
	//删除订单中的一个产品
	$('.delthis').click(function(){
		var order = $(this).attr('order');
		var sid = $(this).attr('sid');
		layer.confirm('确定删除此商品吗？', {icon: 3,'title':'友情提示'}, function(index){
			layer.close(index);
			$.ajax({
			   url:"{:url('delone')}",
			   data:{'sid':sid,'order':order},
			   type:'POST',
			   dataType:'json',
			   success:function(data){
			      if(data.status == 1){
			      	window.location.reload();
			      }else{
			      	layer.alert(data.msg,{icon:5});
			      }
			   }
			});
		});	
		return false;
	});
</script>