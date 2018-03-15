  <div class="footer">
                <div class="footer-inner">
                    <!-- #section:basics/footer -->
                    <div class="footer-content">
                        <span class="bigger-120">
                            <span class="blue bolder">Ace</span>
                            Application &copy; 2013-2014
                        </span>

                        &nbsp; &nbsp;
                        <span class="action-buttons">
                            <a href="#">
                                <i class="ace-icon fa fa-twitter-square light-blue bigger-150"></i>
                            </a>

                            <a href="#">
                                <i class="ace-icon fa fa-facebook-square text-primary bigger-150"></i>
                            </a>

                            <a href="#">
                                <i class="ace-icon fa fa-rss-square orange bigger-150"></i>
                            </a>
                        </span>
                    </div>

                    <!-- /section:basics/footer -->
                </div>
            </div>

            <a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
                <i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
            </a>
        </div><!-- /.main-container -->

      
    </body>
</html>
<script src="_PLUG_/js/jquery1.min.js"></script>
<script src="_PLUG_/bootstrap/js/bootstrap.js"></script>
<!--[if lte IE 8]><script src="{$style}/js/excanvas.js"></script><![endif]-->
<script src="{$style}/js/jquery-ui.custom.min.js"></script>
<script src="{$style}/js/jquery.ui.touch-punch.min.js"></script>
<script src="{$style}/js//bootbox.min.js"></script>
<script src="{$style}/js/jquery.easypiechart.min.js"></script>

<script src="{$style}/js/src/elements.scroller.js"></script>
<script src="{$style}/js/src/elements.colorpicker.js"></script>
<script src="{$style}/js/src/elements.fileinput.js"></script>
<script src="{$style}/js/src/elements.typeahead.js"></script>
<script src="{$style}/js/src/elements.wysiwyg.js"></script>
<script src="{$style}/js/src/elements.spinner.js"></script>
<script src="{$style}/js/src/elements.treeview.js"></script>
<script src="{$style}/js/src/elements.wizard.js"></script>
<script src="{$style}/js/src/elements.aside.js"></script>
<script src="{$style}/js/src/ace.js"></script>
<script src="{$style}/js/src/ace.basics.js"></script>
<script src="{$style}/js/src/ace.scrolltop.js"></script>
<script src="{$style}/js/src/ace.ajax-content.js"></script>
<script src="{$style}/js/src/ace.touch-drag.js"></script>
<script src="{$style}/js/src/ace.sidebar.js"></script>
<script src="{$style}/js/src/ace.sidebar-scroll-1.js"></script>
<script src="{$style}/js/src/ace.submenu-hover.js"></script>
<script src="{$style}/js/src/ace.widget-box.js"></script>
<script src="{$style}/js/src/ace.settings.js"></script>
<script src="{$style}/js/src/ace.settings-rtl.js"></script>
<script src="{$style}/js/src/ace.settings-skin.js"></script>
<script src="{$style}/js/src/ace.widget-on-reload.js"></script>
<script src="{$style}/js/src/ace.searchbox-autocomplete.js"></script>
<script type="text/javascript" src="_PLUG_/js/jquery.form.js"></script>
<script type="text/javascript" src="_PLUG_/js/layer.js"></script>
<script type="text/javascript" src="_PLUG_/js/jquery.nicescroll.js"></script>
<script type="text/javascript" src="{$member_style}/js/kykkk.js"></script>
    </body>
</html>

<script>
$(document).ready(function(){
    $('html').niceScroll({
        smoothscroll : true
    });
});
</script>
<script>
    $('#checkall').click(function(){
        $(this).is(":checked") ? $('.checksingle').prop('checked',true) : $('.checksingle').prop('checked',false);
        $(this).is(":checked") ? $('.checksingle').prop('checked',true) : $('.checksingle').prop('checked',false);
    });
    $('.checksingle').click(function(){
        $(this).is(":checked") ? $(this).parents('label').next('input').prop('checked',true) : $(this).parents('label').next('input').prop('checked',false);
    });
</script>
