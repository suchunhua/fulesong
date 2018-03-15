<!DOCTYPE html>
<html>
 <head>
  <meta charset="UTF-8" />
  <meta content="width=device-width, initial-scale=1.0, user-scalable=no" name="viewport" />
  <link rel="stylesheet" type="text/css" href="{$style}/css/qhdcontent.css" />
  <link rel="stylesheet" type="text/css" href="{$style}/css/content.css" />
  <link rel="stylesheet" type="text/css" href="{$style}/css/menu.css" />
  <link rel="stylesheet" type="text/css" href="{$style}/css/jquery.fancybox-1.3.4.css" />
  <link rel="stylesheet" type="text/css" href="{$style}/css/pgwslideshow.css" />
  <link rel="stylesheet" type="text/css" href="{$style}/css/animate.min.css" />
  <link rel="stylesheet" type="text/css" href="{$style}/css/style.css" />
  <link rel="stylesheet" type="text/css" href="{$style}/css/style-cyan.css" />
  <!--[if lt IE 9]>
 <script src="{$style}/js/html5.js"></script>
<![endif]-->
  <!--[if IE 6]>
 <script type="text/javascript" src="{$style}/js/ie7.js"></script>
 <script type="text/javascript" src="{$style}/js/dd_belatedpng.js"></script>
 <script type="text/javascript">
  DD_belatedPNG.fix('.top img, .footer img, .bottom img, .form-btn, .module-icon-default');
 </script>
<![endif]-->

  <title>{$title}</title>
 </head> 
 <!-- 外部样式 --> 
 <body> 
   <script src="{$style}/js/a1portalcore.js" type="text/javascript"></script>
   <script src="{$style}/js/a1portal.js"></script>
   <script src="{$style}/js/jquery-1.7.2.min.js"></script>
   <script src="{$style}/js/superfish.js"></script>
   <script src="{$style}/js/jquery.caroufredsel.js"></script>
   <script src="{$style}/js/jquery.touchswipe.min.js"></script>
   <script src="{$style}/js/jquery.tools.min.js"></script>
   <script src="{$style}/js/jquery.fancybox-1.3.4.pack.js"></script>
   <script src="{$style}/js/pgwslideshow.min.js"></script>
   <script src="{$style}/js/jquery.fixed.js"></script>
   <script src="{$style}/js/cloud-zoom.1.0.2.min.js"></script>
   <script src="{$style}/js/device.min.js"></script>
   <script src="{$style}/js/html5media-1.2.js"></script>
   <script src="{$style}/js/animate.min.js"></script>
   <script src="{$style}/js/custom.js"></script> 
<div id="wrapper" class="insi-page">
	{include file="public/head"/}
	<section class="main">
	    <div class="page-width clearfix">
	     	<section class="content float-right">
	       		<div id="a1portalSkin_mainArea" class="content-wrapper">
	        		<div class="module-default">
	         			<div class="module-inner">
	          				<div id="a1portalSkin_ctr225327225327_mainArea" class="module-content">
					           <div class="product-detail product-detail-simple">
					            	<div class="product-desc">
					            		<div class="qhd-content">
					             			{$navself.content}
					             			<form action="{:url('form/submit')}" method="post">
					             				<input type="hidden" name="formid" value="1">
					             				<input type="text" name="name" id="">
					             				<input type="submit" value="提交">
					             			</form>
					             		</div>
					            	</div>
					           </div>
	          				</div>
	         			</div>
	        		</div>
	       		</div>
	      	</section>
	      	<section class="sidebar float-left">
		       	<div id="a1portalSkin_sidebarAreaA" class="sidebar-content">
		        	<a name="34200" id="34200"></a>
		        	<div class="module module-hlbg">
		         		<div class="module-inner">
				        	<div class="module-hlbg-title clearfix">
				           		<h3>{$navtop.navname}</h3>
				          	</div>
				          	<div id="a1portalSkin_ctr225326225326_mainArea" class="module-hlbg-content">
					           	<div class="category category-225326 product-category">
						            <ul>
						            	{navlist type="son" id="$navtop['id']"}
						             	<li {if condition="($navself['id'] == $nav['id']) OR ($navparent['id'] == $nav['id'])"}class="current"{/if}><a href="{$nav.url}">{$nav.navname}</a></li>
						            	{/navlist}
						            </ul>
					           	</div>
				          	</div>
		        		</div>
		    		</div>
				</div>
				<script type="text/javascript">
					 $(document).ready(function(){
					  $('.category-225326 ul').find('li:last').addClass('last');
					  
					  $('.category-225326 > ul > li > a, .category-225326 > ul > li > i').click(function(){
					   if( $(this).parent('li').find('ul') ){
					    $(this).parent('li').find('ul').slideDown('fast');
					    $(this).parent('li').siblings('li').find('ul').slideUp('fast');
					    $(this).parent('li').addClass('current').siblings('li').removeClass('current');
					   }
					  }); 
					  
					 });
				</script>
			</section>
		</div>
	</section>
   {include file="public/foot"/}
</div>
   <!-- end of wrapper -->
   <!-- S fixed-bottom  -->
   <div id="a1portalSkin_fixedBottomArea" class="QHDEmptyArea fixed-bottom"></div>
   <!-- E fixed-bottom  -->
   <!-- S fixed-side -->
   <div id="a1portalSkin_fixed-left" class="QHDEmptyArea fixed-side fixed-left"></div>
   <!-- E fixed-side -->
   <!-- S fixed-side -->
   <div id="a1portalSkin_fixed-right" class="QHDEmptyArea fixed-side fixed-right"></div>
   <!-- E fixed-side -->
   <!-- S popup -->
   <div id="popup" class="popup">
    <div class="popup-content not-animated" data-animate="fadeInDown">
     <div id="a1portalSkin_popup-area" class="QHDEmptyArea popup-content-wrapper"></div>
     <div class="popup-close-btn">
      <a href="javascript:;" title="关闭"><span>关闭</span></a>
     </div>
    </div>
    <div class="popup-overlay"></div>
   </div>
   <!-- E popup -->
   <!-- E go top -->
   <div class="gotop-wrapper">
    <a href="javascript:;" class="fixed-gotop gotop"></a>
   </div>
   <!-- E go top --> 
   <input name="ScrollTop" type="hidden" id="ScrollTop" /> 
   <input name="__a1portalVariable" type="hidden" id="__a1portalVariable" /> 
   <input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="" />
  </form> 
  <!-- 外部脚本 -->   
 </body>
</html>