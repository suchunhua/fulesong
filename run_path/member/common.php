<?php
//商品单价
function get_price($arc){
	if($arc['skuid']){
		$ret = \think\Db::name('goodsprice')->field('price')->where('id',$arc['skuid'])->find();
	}else{
		$ret = \think\Db::name('goods')->field('price')->where('id',$arc['goodsid'])->find();
	}
	return $ret['price'];
}


function retlxfs($arc){
	$str = "";
	if($arc['getphone']){
		$str.=$arc['getphone'];
		if($arc['gettel']){
			$str.=','.$arc['gettel'];
		}
	}else{
		$str.=$arc['gettel'];
	}
	return $str;
}