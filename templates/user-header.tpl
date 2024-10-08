<div class="h-card">
<h2 class="p-name">{$me->name}</h2>

	<p><img class="u-photo" src="{$me->getAvatar(158)}" alt="[ {$me->name} avatar ]"></p>

	  {if $me->getTotalTracks()}
	  <h3>
	      {$me->getTotalTracks()} plays
	  </h3>
	  {else}
	  {if ($logged_in)}
	  <p>Welcome to Libre.fm! Have you seen <a href="https://web-scrobbler.com" target="_blank">Web Scrobbler</a>? Try listening to some music in your web browser once you've installed it.</p>
	  {/if}
	  {/if}
	                    {if $me->getTotalTracks()}
	  <blockquote class="p-note" id="bio">
	    <p>{$me->bio|escape:'html':'UTF-8'}</p>
	  </blockquote>
	  {/if}

                  {if $me->getTotalTracks()}
	  {if $me->homepage}
	  <p>Personal website: <a class="u-url" rel="me nofollow" href="{$me->homepage}">{$me->homepage}</a></p>
	  {else}
	  {if ($logged_in)}
	  <p>Join the IndieWeb revolution and <a href="/user-edit.php">add your personal website</a> to your Libre.fm profile.</p>
	  {/if}
	  {/if}
	  {if $me->laconica_profile}
	  <p>Fediverse: <a class="u-url" rel="me nofollow" href="{$me->laconica_profile}">{$me->laconica_profile}</a></p>
	  {else}
	  {if ($logged_in)}
	  <p>Do you have an account on the social web? <a href="/user-edit.php">Add your fediverse profile</a> to your Libre.fm profile.</p>
	  {/if}
	  {/if}
	  {/if}


	  {if ($logged_in)}
                  {if $me->getTotalTracks()}
	  {if $me->homepage}
	  {if $me->laconica_profile}
	<p class="end-times-alert">Hey! Glad to see you're using Libre.fm! Please consider adding your name to <a href="https://github.com/foocorp/hacienda/issues/39">this list of users</a>.</p>
 {/if}
	  {/if}
	  {/if}
{/if}
</div>

<hr />

      {include file='submenu.tpl'}
