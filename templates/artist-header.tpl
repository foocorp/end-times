{if $artist->image_medium}
<p><img class="img-responsive" src="{$artist->image_medium}"
      alt= "[ {$artist->name} photo ]"/></p>{/if}

<h2>{$artist->name}
      </h2>

      {if $artist->getListenerCount()}
      <p>
	<span class="label label-primary">
	  <span class="glyphicon glyphicon-headphones"></span>
	  {$artist->getListenerCount()} listeners</span>
      </p>
      {/if}
      {if $artist->homepage}
      <p><a href="{$artist->homepage}">{$artist->homepage}</a></p>
      {/if}
    {include file='submenu.tpl'}

