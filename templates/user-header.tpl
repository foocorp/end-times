<div class="h-card">
<h2 class="p-name">{$me->name}</h2>

	<p><img class="u-photo" src="{$me->getAvatar(158)}" alt="[ {$me->name} avatar ]"></p>

	  {if $me->getTotalTracks()}
	  <h3>
	      {$me->getTotalTracks()} plays
	  </h3>
	  {/if}
	                    {if $me->getTotalTracks()}
	  <blockquote class="p-note" id="bio">
	    <p>{$me->bio|escape:'html':'UTF-8'}</p>
	  </blockquote>
	  {/if}

                  {if $me->getTotalTracks()}
	  {if $me->homepage}
	  <p>Personal website: <a class="u-url" rel="me nofollow" href="{$me->homepage}">{$me->homepage}</a></p>
	  {/if}
	  {if $me->laconica_profile}
	  <p>Fediverse: <a class="u-url" rel="me nofollow" href="{$me->laconica_profile}">{$me->laconica_profile}</a></p>
	  {/if}
	  {/if}

</div>

<hr />

      {include file='submenu.tpl'}
