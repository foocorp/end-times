
{if $album->mbid}
	<img class="img-responsive"
	     src="https://coverartarchive.org/release/{$album->mbid}/front-250"
	alt="" height="250" loading="lazy" />
{else}
<img style="border: 1px solid white;" src="https://turtle.libre.fm/cover.php?album={$album->name|escape:'url'}&artist={$artist->name|escape:'url'}"  alt="" loading="lazy" />
   {/if}

	<h2>
	  {$track->name}
	</h2>
	<h3>on <a href="{$album->getURL()}">{$album->name}</a> by <a href="{$artist->getURL()}">{$artist->name}</a></h3>
    {include file='submenu.tpl'}
