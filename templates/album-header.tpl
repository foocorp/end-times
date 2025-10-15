{if $album->mbid}
{$album->mbid|coverartexists:250:"":""}
{else}
<p>No MusicBrainz ID found for {$album->name}. Checking now.</p>
<img style="background: #666; border: 1px solid white;" width="250" height="250" src="https://turtle.libre.fm/cover.php?album={$album->name|escape:'url'}&artist={$artist->name|escape:'url'}"  alt="" loading="lazy" />
   {/if}

    <h2>
      {$album->name}
    </h2>
    <p>by <a href="{$artist->getURL()}">{$artist->name}</a></p>
    {if $album->releasedate}
    <p>Released on {$album->releasedate|date_format:"%Y-%m-%d"}</p>
    {/if}
   
    {include file='submenu.tpl'}

