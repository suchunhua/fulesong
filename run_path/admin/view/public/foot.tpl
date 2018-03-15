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
</div>
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
<script src="{$style}/js/status.js"></script>

	</body>
</html>


<div class="hidden"><script id="litpic_ueditor"></script></div>
<div class="hidden"><script id="litpics_ueditor"></script></div>
<div class="hidden"><script id="video_ueditor"></script></div>
<script>
	var litpic = UE.getEditor('litpic_ueditor'); 
	$('#litpic_btn').click(function(){ ueimg($(this),litpic);});
	if("{$hasauth}" == 'no'){
		layer.msg('没有权限',{icon:5,time:1500},function(){
			window.history.go(-1);
		});
	}
</script>