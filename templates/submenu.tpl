{if isset($submenu)}
	<ul class="nav nav-pills">
	{foreach $submenu as $i}
		<li {if $i.active}class='nav-item active'{/if}>
			<a class="nav-link" href='{$i.url|escape:'html'}'>{$i.name}</a>
		</li>
	{/foreach}
	</ul>
	{else}&nbsp;
{/if}
