{if $album->image}
	<img class="img-responsive"
	     src="{$album->image}"
	alt="{$album->name} album cover" />
   {/if}

    <h2>
      {$album->name}
    </h2>
    <p>by <a href="{$artist->getURL()}">{$artist->name}</a></p>
    {if $album->releasedate}
    <p>Released on {$album->releasedate|date_format:"%Y-%m-%d"}</p>
    {/if}
   
    {include file='submenu.tpl'}

