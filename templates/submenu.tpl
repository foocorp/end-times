{if isset($submenu)}
<ul class="nav nav-pills nav-fill">
	{foreach $submenu as $i}
		<li class='nav-item'>
			<a class="nav-link{if $i.active} active{/if}" {if $i.active}aria-current="page"{/if} href='{$i.url|escape:'html'}'>{$i.name}</a>
		</li>
	{/foreach}
	</ul>
	{else}&nbsp;
{/if}
