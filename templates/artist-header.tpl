{if $image}
<p><img src="{$image}" alt=""/></p>
<p><small>Image credit: <a href="https://en.wikipedia.org/wiki/{$artist->name}">{$artist->name} at Wikipedia</small></p>
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

