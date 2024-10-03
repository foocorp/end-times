
<h2>{$me->name}</h2>

<p>Joined on {$me->created|date_format:"%A, %B %e, %Y"}}</p>

	<p><img src="{$me->getAvatar(158)}" alt="[ {$me->name} avatar ]"></p>

	  {if $me->getTotalTracks()}
	  <h3>
	      {$me->getTotalTracks()} plays
	  </h3>
	  {/if}
	                    {if $me->getTotalTracks()}
	  <blockquote>
	    <p>{$me->bio|escape:'html':'UTF-8'}</p>
	  </blockquote>
	  {/if}

                  {if $me->getTotalTracks()}
	  {if $me->homepage}
	  <p>Personal website: <a rel="me nofollow" href="{$me->homepage}">{$me->homepage}</a></p>
	  {/if}
	  {if $me->laconica_profile}
	  <p>Fediverse: <a rel="me nofollow" href="{$me->laconica_profile}">{$me->laconica_profile}</a></p>
	  {/if}
	  {/if}

<hr />

      {include file='submenu.tpl'}
