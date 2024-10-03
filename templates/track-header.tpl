
{if $artist->image_small}
    <img class="img-responsive" src="{$artist->image_small}"  alt=""/>
    {/if}
	<h2>
	  {$track->name}
	</h2>
	<h3><a href="{$artist->getURL()}">{$artist->name}</a></h3>
    {include file='submenu.tpl'}
