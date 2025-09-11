<div class="h-card">
<h2 class="p-name">{$me->name}</h2>


<p><img class="u-photo" height="90" width="90" border="1" src="{$me->getAvatar(90)}" alt=""></p>
{if $awesomenumber}
<p>User #{$awesomenumber}</p>
{/if}

{if $totaltracks}
	  <p>
	      <strong>{$totaltracks}</strong> tracks played
	  </p>
	  {/if}

{if $totaltracks}
	  <blockquote class="p-note" id="bio">
	    {$me->bio|escape:'html':'UTF-8'}
	  </blockquote>

	  {if $me->homepage}
	  <p>Personal website: <a class="u-url" rel="me nofollow" href="{$me->homepage}">{$me->homepage}</a></p>
	  {/if}
	  {if $me->laconica_profile}
	  <p>Fediverse profile: <a class="u-url" rel="me nofollow" href="{$me->laconica_profile}">{$me->laconica_profile}</a></p>
	  {/if}

	  {/if}

</div>

      {include file='submenu.tpl'}
