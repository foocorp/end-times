<div class="h-card alert alert-dark">
<h2 class="p-name card-title">{$me->name}</h2>
<p><img class="u-photo img-thumbnail" style="background: whitesmoke url(https://turtle.libre.fm/spinner.gif); background-position: center center; background-repeat: no-repeat; " loading="lazy" height="90" width="90" src="{$me->getAvatar(90)}" alt=""></p>



{if $totaltracks}
	  <p class="card-subtitle mb-2 text-body-secondary">
	      <strong>{$totaltracks}</strong> tracks played
	  </p>
	  {/if}

{if $totaltracks}
{if $me->bio}
	  <p class="p-note alert alert-primary" id="bio">
	    {$me->bio|escape:'html':'UTF-8'}
	  </p>
{/if}

<ul>
	  {if $me->homepage}
	  <li class="card-text">Personal website: <a class="u-url card-link" rel="me nofollow" href="{$me->homepage}">{$me->homepage}</a></li>
	  {/if}
	  {if $me->laconica_profile}
	  <li class="card-text">Fediverse profile: <a class="u-url card-link" rel="me nofollow" href="{$me->laconica_profile}">{$me->laconica_profile}</a></li>
	  {/if}

	  {/if}
</ul>

</div>

      {include file='submenu.tpl'}
