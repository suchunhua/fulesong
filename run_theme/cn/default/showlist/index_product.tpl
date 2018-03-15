{include file="public/head"/}

	{ad id="1"}

    <div class="banner02" style="background:url('{$navtop.litpic}') center bottom no-repeat">

        <div class="banner-position text-center">

        <div class="banner-tt">{$ad.title}</div>

        <div class="banner-txt">{$ad.content}</div>

        <div><a href="http://p.qiao.baidu.com/im/index?siteid=8274707&ucid=19491859&cp=%E7%A6%8F%E4%B9%90%E9%A2%82&cr=www.fulesong.com.cn&cw=360%E6%90%9C%E7%B4%A2" class="btn btn-fff">立即咨询</a></div>

        </div>

    </div>

    {/ad}

    <div class="nav-top">

    	<div class="container removedian">

    {navlist type="son" id="$navtop['id']"}

    <a {if condition="$navself['id'] EQ $nav['id']"}class="bold"{/if} href="{$nav.url}" >{$nav.navname}</a>  <span>•</span> 

	{/navlist}

        </div>

    </div>

    <div class="container">

    	<div class="row">

    		{ad id="2"}

        	<div class="col-md-7 product-txt ">

         		<div class="title">{$ad.title}</div>

            	<div class="pro_ad" style="text-align:justify">{$ad.content}</div>

				<div><a href="{$ad.url}" class="btn btn-look">查看更多产品信息<img src="{$style}/images/icon02.png"></a></div>

            </div>

            <div class="col-md-5 product-img">

            	<img class="" src="{$ad.litpic}">

            </div>

            {/ad}

        </div>

    </div>

    <div class="product-back">

    	<div class="container">

        	<div class="row">

        		{ad id="3"}

            	<div class="col-md-7 product-img">

                <img class="" src="{$ad.litpic}">

                </div>

                <div class="col-md-5 product-txt product-txt02">

                    <div class="title">{$ad.title}</div>

                    <div class="pro_ad">{$ad.content}</div> 

                    <div><a href="{$ad.url}" class="btn btn-look">查看更多产品信息<img src="{$style}/images/icon02.png"></a></div>

                </div>

                {/ad}

            </div>

        </div>

    </div>

        <div class="container">

        	<div class="row">

        		{ad id="4"}

            	<div class="col-md-6 product-txt">

             		<div class="title">{$ad.title}</div>

                  	<div class="pro_ad" style="text-align:justify">{$ad.content}</div>

					<div><a href="{$ad.url}" class="btn btn-look">查看更多产品信息<img src="{$style}/images/icon02.png"></a></div>

                </div>

                <div class="col-md-6 product-img">

                	<img class=""  src="{$ad.litpic}">

                </div>

                {/ad}

            </div>

        </div>

        <div class="product-back">

        	<div class="container">

            	<div class="row">

            		{ad id="5"}

                	<div class="col-md-7 product-img product-txt product-txt02 text-center">

                    <img class="" src="{$ad.litpic}">

                    </div>

                    <div class="col-md-5 product-txt product-txt02">

                        <div class="title">{$ad.title}</div>

                  		<div class="pro_ad" style="text-align:justify">{$ad.content}</div>

						<div><a href="{$ad.url}" class="btn btn-look">查看更多产品信息<img src="{$style}/images/icon02.png"></a></div>

                    </div>

                    {/ad}

                </div>

            </div>

        </div>

        <div class="container">

        	<div class="row">

        		{ad id="6"}

            	<div class="col-md-6 product-txt">

             		<div class="title">{$ad.title}</div>

                  	<div class="pro_ad" style="text-align:justify">{$ad.content}</div>

					<div><a href="{$ad.url}" class="btn btn-look">查看更多产品信息<img src="{$style}/images/icon02.png"></a></div>

                </div>

                <div class="col-md-6 product-img product-txt product-txt02 text-center">

                	 <img class="" src="{$ad.litpic}">

                </div>

                {/ad}

            </div>

        </div>

        <div class="product-back">

        	<div class="container">

            	<div class="row">

            		{ad id="7"}

                	<div class="col-md-7 product-img">

                    <img class="" src="{$ad.litpic}">

                    </div>

                    <div class="col-md-5 product-txt product-txt02">

                     <div class="title">{$ad.title}</div>

                  	 <div class="pro_ad" style="text-align:justify">{$ad.content}</div>

					 <div><a href="{$ad.url}" class="btn btn-look">查看更多产品信息<img src="{$style}/images/icon02.png"></a></div>

                    </div>

                    {/ad}

                </div>

            </div>

        </div>

        <div class="container">

        	<div class="row">

        		{ad id="8"}

            	<div class="col-md-6 product-txt">

             		<div class="title">{$ad.title}</div>

                  	 <div class="pro_ad" style="text-align:justify">{$ad.content}</div>

					 <div><a href="{$ad.url}" class="btn btn-look">查看更多产品信息<img src="{$style}/images/icon02.png"></a></div>

                </div>

                <div class="col-md-6 text-center product-img">

                	<img class="" src="{$ad.litpic}">

                </div>

                {/ad}

            </div>

        </div>

  {include file="public/foot"/}