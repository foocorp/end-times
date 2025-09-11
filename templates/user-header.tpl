<div class="h-card">
<h2 class="p-name">{$me->name}</h2>

<ul>
<li><img class="u-photo" height="90" width="90" border="1" src="{$me->getAvatar(90)}" alt=""></li>

{if $totaltracks}
	  <li>
	      <strong>{$totaltracks}</strong> tracks played
	  </li>
	  {/if}

{if $totaltracks}
{if $me->bio}
	  <li class="p-note" id="bio">
	    {$me->bio|escape:'html':'UTF-8'}
	  </li>
{/if}

	  {if $me->homepage}
	  <li>Personal website: <a class="u-url" rel="me nofollow" href="{$me->homepage}">{$me->homepage}</a></li>
	  {/if}
	  {if $me->laconica_profile}
	  <li>Fediverse profile: <a class="u-url" rel="me nofollow" href="{$me->laconica_profile}">{$me->laconica_profile}</a></li>
	  {/if}

	  {/if}
</ul>

</div>

      {include file='submenu.tpl'}
