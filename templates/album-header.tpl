{if $album->mbid}
	<img class="img-responsive"
	     src="https://coverartarchive.org/release-group/{$album->mbid}/front-250"
	alt="" height="250" loading="lazy" />
{else}
<p>No MusicBrainz ID found for {$album->name}, searching...</p>
<img height="250" style="border: 1px solid white;" src="https://turtle.libre.fm/cover.php?album={$album->name|escape:'url'}&artist={$artist->name|escape:'url'}"  alt="" loading="lazy" />
   {/if}

<details><summary>Debugging</summary><p class="text-center"><small><a target="_blank" href="https://github.com/foocorp/hacienda/issues/68">Album art feedback</a> or <a target="_blank"href="https://turtle.libre.fm/cover.php?album={$album->name|escape:'url'}&artist={$artist->name|escape:'url'}&stop=1">debug</a></small></p></details>


    <h2>
      {$album->name}
    </h2>
    <p>by <a href="{$artist->getURL()}">{$artist->name}</a></p>
    {if $album->releasedate}
    <p>Released on {$album->releasedate|date_format:"%Y-%m-%d"}</p>
    {/if}
   
    {include file='submenu.tpl'}

