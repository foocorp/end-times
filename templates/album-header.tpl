{if $album->mbid}
	<img class="img-responsive"
	     src="https://coverartarchive.org/release/{$album->mbid}/front-250"
	alt="" height="250" loading="lazy" />
   {/if}



    <h2>
      {$album->name}
    </h2>
    <p>by <a href="{$artist->getURL()}">{$artist->name}</a></p>
    {if $album->releasedate}
    <p>Released on {$album->releasedate|date_format:"%Y-%m-%d"}</p>
    {/if}
   
    {include file='submenu.tpl'}

