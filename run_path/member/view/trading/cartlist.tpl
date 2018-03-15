{include file="public/head"/}
{include file="public/left"/}
<div class="main-content">
    <div class="main-content-inner">
        <div class="page-content" >
        	<form action="{:url('order/createbefore')}" method="post">
            	<div class="row" >
            	<div class="col-sm-12" style="background: #fff; padding-top: 15px">
                <table class="table  table-bordered table-hover vmd" > 
				<thead>
					<tr>
						<th class="center detail-col">
							<label class="pos-rel">
								<input type="checkbox" class="ace" id="checkall"/><span class="lbl"></span>
							</label>
						</th>
						<th>商品</th>
						<th class="center">规格</th>
						<th class="center">单价(元)</th>
						<th class="center">数量</th>
						<th class="center">小计(元)</th>
						<th class="center">操作</th>
					</tr>
				</thead>
				<tbody>
					{volist name="datalist" id="arc"}
					<tr>
						<td class="center">
							<label class="pos-rel">
								<input type="checkbox" class="ace checksingle" name="skuid[{++$a}]" value="{$arc.skuid}" />
								<span class="lbl"></span>
							</label> 
							<input type="checkbox" class="checksingle hidden" name="goodsid[{++$b}]" value="{$arc.goodsid}"/>
						</td>
						<td>
							<p style="display: inline-block; margin-bottom: 0"><img src="{$arc.litpic}" width="80" height="80"></p>
							<p style="display: inline-block;">{$arc.title}</p>

						</td>
						<td class="center">{$arc.skuname}</td>
						<td class="center sprice">{$arc|get_price}</td>
						<td class="center cartnum">
							<div class="labele_group">
		                        <label class="setdec"> - </label>
		                        <input type="text" name="ordernum[{++$c}]" value="{$arc.cartnum}" readonly>
		                        <label class="setinc"> + </label>
		                    </div>
						</td>
						<td class="center subtotal">{$arc|subprice}</td>
						<td class="center"><a href="javascript:void(0)" class="btn btn-danger btn-xs removecart" sid="{$arc.skuid}" gid="{$arc.goodsid}">移除</a></td>
					</tr>
					{/volist}
				<tr >
					<td colspan="7">
						<input type="submit" value="去结算">
					</td>
				</tr>	
				</tbody>
				</table>
			</div>
        	</div>
        	</form>
    	</div>
    </div>
</div>
{include file="public/foot"/}