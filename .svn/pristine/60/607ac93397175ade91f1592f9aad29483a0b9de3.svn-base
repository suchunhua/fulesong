{include file="public/head"/}

<div class="banner02 banner06">
    <div class="banner-position text-center">
        <!--<div class="banner-tt banner-tt-w">帮助中心</div>-->
        <!--<div class="banner-txt banner-txt-w">您需要了解的一些问题，我们已经为您准好了回答</div>-->
    </div>
</div>
     
<!-- banner结束 -->
<div class="nav-top nav-border">
        <div class="text-center removedian">
    {navlist type="son" id="$navtop['id']"}
    <a {if condition="$navself['id'] EQ $nav['id']"}class="bold"{/if} href="{$nav.url}" >{$nav.navname}</a>  <span>•</span> 
    {/navlist}
        </div>
</div>
<div class="container container-g">
    <div class="row">
        <div class="col-md-12 gy-img">
            <img src="{$navself.litpic}" alt="" style="width: 100%">
        </div>
        <div class="col-md-12 gy-p">
             {$navself.content}
        </div>   
   </div>
  
    <div class="video-box">
       <video src="http://images.firstdimension.cn/video/fulesong/promoOfficial.mp4" controls="controls" preload="preload" poster="{$style}/images/fd-video.png" class="fd-video" id="fd-video">your browser does not support the video tag</video>
       <div class="pass">
        <img src="{$style}/images/play.png" alt="" id="playimg">
       </div>
    </div>

    <div class="row eight-img">
       {ad id="20"}{$ad.content|bft}{/ad}
        
    </div>
</div>
<div class="jspt">
   <div class="container">
       <div class="row" style="text-align: center">
               <div class="d-title">
                   <p class="p-title">技术平台</p>
               </div>
               <div class=" col-md-6 col-sm-6 col-xs-6 ">
                   <div class="i-border" s>
                   <img style="width: 100%"  src="{$style}/images/r1.png" alt="">
                   </div>
                   <div class="i-title" style="padding-top: 20px">
                       Illumina高通量测序平台
                   </div>
               </div>

              <div class=" col-md-6 col-sm-6 col-xs-6 " >
                  <div class="i-border">
                  <img style="width: 100%"  src="{$style}/images/b2.png" alt="">
                  </div>
                  <div class="i-title">
                      Life Technologies高通量测序平台
                  </div>
              </div>
       </div>
   </div>
</div>
{include file="public/foot"/}

<script>

  var video = document.getElementById("fd-video");
  var img = document.getElementById("playimg");

  img.onclick = function(){
    img.style.display = "none";
    video.play();
  }

  video.addEventListener('pause',function(){  
    $('#playimg').show(); 
  });
  video.addEventListener('play',function(){  
    $('#playimg').hide();  
  }) 
</script>