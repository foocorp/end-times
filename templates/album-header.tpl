{if $album->mbid}
	<img class="img-responsive"
	     src="https://coverartarchive.org/release/{$album->mbid}/front-250"
	alt="" height="250" loading="lazy" />
{else}
<img height="250" style="border: 1px solid white;" src="https://turtle.libre.fm/cover.php?album={$album->name|escape:'url'}&artist={$artist->name|escape:'url'}"  alt="" loading="lazy" />
   {/if}

<p class="text-center"><small><a href="https://github.com/foocorp/hacienda/issues/68">Album art feedback</a></small></p>


    <h2>
      {$album->name}
    </h2>
    <p>by <a href="{$artist->getURL()}">{$artist->name}</a></p>
    {if $album->releasedate}
    <p>Released on {$album->releasedate|date_format:"%Y-%m-%d"}</p>
    {/if}
   
    {include file='submenu.tpl'}

