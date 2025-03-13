{if $image}
<p><img height="250" class="wikipedia-profile-image" src="{$image}" alt=""/></p>
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

