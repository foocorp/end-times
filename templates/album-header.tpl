{if $album->mbid}
	<img class="img-responsive"
	     src="https://coverartarchive.org/release/{$album->mbid}/front-250"
	alt="" height="250" loading="lazy" />
{else}
<img src="https://turtle.libre.fm/cover.php?album={$album->name}&artist={$artist->name}" height="1" width="1" alt="" loading="lazy" />
   {/if}



    <h2>
      {$album->name}
    </h2>
    <p>by <a href="{$artist->getURL()}">{$artist->name}</a></p>
    {if $album->releasedate}
    <p>Released on {$album->releasedate|date_format:"%Y-%m-%d"}</p>
    {/if}
   
    {include file='submenu.tpl'}

