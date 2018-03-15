<html lang="zh-CN">

    <head>

        <meta charset="utf-8">

        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>{$title}</title>

        <meta name="keywords" content="{$keywords}">

        <meta name="description" content="{$description}">

        <link rel="stylesheet" href="_PLUG_/bootstrap/css/bootstrap.min.css" />

        <link rel="stylesheet" href="{$style}/css/main.css" />

        <link rel="stylesheet" href="{$style}/css/animate.min.css">

        <!--[if lt IE 9]>

        <script src="http://cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>

        <script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>

        <![endif]-->
        <script>
var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "https://hm.baidu.com/hm.js?ce9dfdbcb03dabfb9f0dc3d3303ee4b1";
  var s = document.getElementsByTagName("script")[0]; 
  s.parentNode.insertBefore(hm, s);
})();
</script>

    </head>

    <body>

<nav class="navbar navbar-default" role="navigation">

    <div class="container">

        <!-- Brand and toggle get grouped for better mobile display -->

        <div class="navbar-header">

            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">

                <span class="sr-only">Toggle navigation</span>

                <span class="icon-bar"></span>

                <span class="icon-bar"></span>

                <span class="icon-bar"></span>

            </button>

            <a class="navbar-brand" href="#"><img class="animated fadeInLeftBig" src="{$style}/images/logo.png"></a>

        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->

        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

            <ul class="nav navbar-nav">

                <li class="active"><a href="/">首页</a></li>

                {navlist type="top" row="6"}

                <li><a {if condition="$navtop['id'] EQ $nav['id']"}class="nav-blue"{/if} href="{$nav.url}">{$nav.navname}</a></li>

                {/navlist}

            </ul>

            <form action="/search" method="get" class="navbar-form navbar-right" role="search">



                <div class="form-group">

                    <input type="text" class="form-control form-search" placeholder="" name="key">

                    <button type="submit" class="btn btn-search"><i class="glyphicon glyphicon-search"></i></button>

                </div>

            </form>

        </div><!-- /.navbar-collapse -->

    </div><!-- /.container-fluid -->

</nav>