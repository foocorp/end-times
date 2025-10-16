{if $image}
<p><img style="width: 100%; max-width: 250px !important; background: #666 url(https://turtle.libre.fm/spinner.gif); background-position: center center; background-repeat: no-repeat; " loading="lazy" class="wikipedia-profile-image" src="{$image}" alt=""/></p>
{/if}



<h2>{$artist->name}</h2>

      {if $artist->getListenerCount()}
      <p>
	  {$artist->getListenerCount()} listeners
      </p>
      {/if}
      {if $artist->homepage}
      <p><a href="{$artist->homepage}">{$artist->homepage}</a></p>
      {/if}
    {include file='submenu.tpl'}

