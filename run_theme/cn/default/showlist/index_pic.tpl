{include file="public/head"/}
	    {ad id="11"}
        <div class="banner02" style="background:url('{$navtop.litpic}') center bottom no-repeat">
            <div class="banner-position text-center">
            <div class="banner-tt">{$ad.title}</div>
            <div class="banner-txt">{$ad.content}</div>
            <div><a href="http://p.qiao.baidu.com/im/index?siteid=8274707&ucid=19491859&cp=%E7%A6%8F%E4%B9%90%E9%A2%82&cr=www.fulesong.com.cn&cw=360%E6%90%9C%E7%B4%A2" class="btn btn-fff">立即咨询</a></div>
            </div>
        </div>
        {/ad}
        <div class="nav-top nav-border">
        	<div class="container text-center  removedian">
    {navlist type="son" id="$navtop['id']"}
    <a {if condition="$navself['id'] EQ $nav['id']"}class="bold"{/if} href="{$nav.url}" >{$nav.navname}</a>  <span>•</span> 
	{/navlist}
            </div>
            <div class="position-bottom"><a href="###"><img src="{$style}/images/icon11.png"></a></div>
        </div>
        <div class="container">
        	<div class="dis-table text-center">
            	<div class="clearfix">
                	<div class="color-col pull-left">
                    	<p>常见性疾病</p>
                        <div class="color-one"></div>
                    </div>
                	<div class="color-col pull-left">
                    	<p>男性高发病</p>
                        <div class="color-one color-tow"></div>
                    </div>
                	<div class="color-col pull-left">
                    	<p>女性高发病</p>
                        <div class="color-one color-three"></div>
                    </div>
                	<div class="color-col pull-left">
                    	<p>老年高发病</p>
                        <div class="color-one color-four"></div>
                    </div>
                </div>
            </div>
            <style>
            .a{display:inline-block; height: 5px;width:30px;}
            </style>
           	
                <div class="table-responsive margin-table">
                {php}
					if($navself['id'] == 20){
						$thisid = 27;
					}
					if($navself['id'] == 21){
						$thisid = 28;
					}
					if($navself['id'] == 22){
						$thisid = 31;
					}
					if($navself['id'] == 25){
						$thisid = 32;
					}
					if($navself['id'] == 24){
						$thisid = 30;
					}
					if($navself['id'] == 23){
						$thisid = 29;
					}
                {/php}
                

 				<table class="table table-bordered text-center table-jc hidden-xs">
                  <thead>
                    <tr>
                     <th colspan="4">{$navself.navname}</th>
                    </tr>
                  </thead>
                  <tbody class="fortr">
                    <tr>
                    {php}$fornum = 0;{/php}
                    {arclist row="120" navid="$thisid"}
                      <td >
                        <div class="color-col">
                            <p> <a href="{$arc.url}">{$arc.title}</a></p>
							<div class="table-div">
								{$arc.jbfl|jbfl}
							</div>
                        </div>
                      </td>
                      {if condition="(++$fornum)%4 EQ 0"}</tr><tr>{/if}
                    {/arclist}
                    </tr>
                  </tbody>
                </table>
                

                	
                    <!--老年相关疾病小屏幕时候-->
                    <table class="table table-bordered text-center table-jc visible-xs">
                        <thead>
                        <tr>
                            <th colspan="4">{$navself.navname}</th>
                        </thead>
                        <tbody>
                        <tr>
                        {php}$fornumm = 0;{/php}
                        {arclist row="120" navid="$thisid"}
                            <td>
                                <div class="color-col">
                                    <p> <a href="{$arc.url}">{$arc.title}</a></p>
                                    <div class="table-div">{$arc.jbfl|jbfl}</div>
                                </div>
                            </td>
                            {if condition='(++$fornumm)%2 EQ 0'}</tr><tr>{/if}
                            {/arclist}
                        </tr>
                        </tbody>
                    </table>
                  
                </div>
                
        </div>
   {include file="public/foot"/}