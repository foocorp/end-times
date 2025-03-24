<div class="h-card">
<h2 class="p-name">{$me->name}</h2>

{assign var="total-tracks" value=$me->getTotalTracks()}
{if $me->name == $this_user->name}
{assign var="same-user" value="1"}
{/if}

<h1>su{$same-user}</h1>

<p><img class="u-photo" src="{$me->getAvatar(90)}" alt=""></p>
<p>User #{$awesomenumber}</p>

	  {if ($logged_in)}
{if $same-user}
<p><a class="edit-profile-link" href="/user-edit.php">Edit my profile</a></p>
<p><a class="logout-profile-link" href="{$base_url}/login.php?action=logout">{t}Logout{/t}</a></p>
{/if}
{/if}

	  {if $total-tracks}
	  <p>
	      <strong>{total-tracks}</strong> tracks played
	  </p>
	  {else}
	  {if ($logged_in)}
	  <p>Welcome to Libre.fm! Have you seen <a href="https://web-scrobbler.com" target="_blank">Web Scrobbler</a>? Try listening to some music in your web browser once you've installed it.</p>
	  {/if}
	  {/if}
	                    {if total-tracks}
	  <div class="p-note" id="bio">
	    {$me->bio|escape:'html':'UTF-8'}
	  </div>

	  <hr>  
	  <p><small>Last updated: {$lastd|date_format:"%Y-%m-%d"}</small></p>

	  {/if}

          {if total-tracks}
	  {if $me->homepage}
	  <ul>
	  <li><a class="u-url" rel="me nofollow" href="{$me->homepage}">{$me->homepage}</a></li>
	  {/if}
	  {if $me->laconica_profile}
	  <li><a class="u-url" rel="me nofollow" href="{$me->laconica_profile}">{$me->laconica_profile}</a></li>
	  {else}
	  {if ($logged_in)}
{if $same-user}
	  <p>Do you have an account on the social web? <a href="/user-edit.php">Add your fediverse profile</a> to your Libre.fm profile.</p>
	  {/if}
	  {/if}
	  {/if}
          </ul>
	  {else}
	  {if ($logged_in)}
{if $same-user}
	  <p>Join the IndieWeb revolution and <a href="/user-edit.php">add your personal website</a> to your Libre.fm profile.</p>
	  {/if}
	  {/if}
	  {/if}


	  {if ($logged_in)}
                  {if total-tracks}
	  {if $me->homepage}
	  {if $me->laconica_profile}
{if $same-user}
	<p class="end-times-alert">Hey! Glad to see you're using Libre.fm's new personal website and Fediverse features! Please consider adding your name to <a href="https://github.com/foocorp/hacienda/issues/39">this list of users</a>.</p>
 {/if}
	  {/if}
	  {/if}
{/if}
{/if}

</div>

<hr />

      {include file='submenu.tpl'}
