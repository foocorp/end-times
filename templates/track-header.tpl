

{if $album}

{if $album->mbid}
	<img class="img-responsive"
	     src="https://coverartarchive.org/release-group/{$album->mbid}/front-250"
	alt="" height="250" loading="lazy" />
{else}
<p>No MusicBrainz ID found for {$album->name}, searching...</p>
<p><img style="background: #666; border: 1px solid white;" width="250" height="250" src="https://turtle.libre.fm/cover.php?album={$album->name|escape:'url'}&artist={$artist->name|escape:'url'}"  alt="" loading="lazy" /></p>
   {/if}
<!-- 
<details><summary>Debugging</summary><p class="text-center"><small><a target="_blank" href="https://github.com/libre-fm/libre-fm/issues/68">Album art feedback</a> or <a target="_blank"href="https://turtle.libre.fm/cover.php?album={$album->name|escape:'url'}&artist={$artist->name|escape:'url'}&stop=1">debug</a></small></p></details> -->

<h2>
	  {$track->name}
	</h2>
	<h3>from <a href="{$album->getURL()}">{$album->name}</a> by <a href="{$artist->getURL()}">{$artist->name}</a></h3>
{else}
<h2>
	  {$track->name}
	</h2>
	<h3><a href="{$artist->getURL()}">{$artist->name}</a></h3>
{/if}

	
    {include file='submenu.tpl'}
