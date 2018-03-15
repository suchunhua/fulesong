<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006~2016 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: liu21st <liu21st@gmail.com>
// +----------------------------------------------------------------------
// '[hello]'     => [
//         ':id'   => ['index/hello', ['method' => 'get'], ['id' => '\d+']],
//         ':name' => ['index/hello', ['method' => 'post']],
//     ],

return [
    '__pattern__' => [
        'name' => '\w+',
    ],
    config('loginpath').'/:suffix' => ['admin/login/index',['method' => 'get'],['suffix'=>'^[A-Za-z]+[A-Za-z0-9]+$']],
    'content/:navid/:id'        => ['index/detail/index',['method' => 'get'],['navid'=>'\d+','id'=>'\d+']],
    'goods/:navid/:id'          => ['index/goods/detail',['method' => 'get'],['navid'=>'\d+','id'=>'\d+']],
    'click/:navid/:id'          => ['index/detail/click',['method' => 'get'],['navid'=>'\d+','id'=>'\d+']],
    'category/:navid'           => ['index/showlist/index',['method' => 'get'],['navid'=>'\d+']],
    'goods/:navid'              => ['index/goods/showlist',['method' => 'get'],['navid'=>'\d+']],
    'goods/:navid/:attr'        => ['index/goods/showlist',['method' => 'get'],['navid'=>'\d+','attr'=>'[\d]+']],
    'search'                    => ['index/search/index',['method' => 'get']],
    'addcart'                   => ['member/shopcart/addCart',['method' => 'post']],
    'buynow'                    => ['member/order/buynow',['method' => 'post']],
    'cartlist'                  => ['member/shopcart/cartlist',['method' => 'get']],
    'changenum'                 => ['member/shopcart/changenum',['method' => 'get']],
    'createaddress'             => ['member/address/addaddress',['method' => 'get']],
    'shoping'                   => ['index/goods/index',['method' => 'get']],
    'login'                     => ['/member_help_index_t_l',['method' => 'get']],
    'register'                  => ['/member_help_index_t_r',['method' => 'get']],
    'retrieve'                  => ['index/showlist/retrieve',['method' => 'post']],
    'install'                   => ['install/index/index'],

];
