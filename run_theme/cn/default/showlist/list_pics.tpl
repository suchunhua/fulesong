{include file="public/head"/}
<div class="page">
	<div class="container clearfix">
		{include file="public/left"/}
		<div class="page_main fr">
			{include file="public/position"/}
			<div class="list_pic">
				<ul class="clearfix">
					{list row="4"}
					<li><a href="{$arc.url}">
						<span class="img"><img src="{$arc.litpic}" alt="{$arc.title}"></span>
						<p>{$arc.title}</p>
					</a></li>
					{/list}
				</ul>
			</div>
			<div class="pagelist">{$pagelist}</div>
		</div>
	</div>
</div>
{include file="public/foot"/}