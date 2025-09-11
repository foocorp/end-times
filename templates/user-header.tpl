<div class="h-card">
<h2 class="p-name">{$me->name}</h2>


<p><img class="u-photo" src="{$me->getAvatar(90)}" alt=""></p>
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

	  {/if}

          {if $totaltracks}
	  {if $me->homepage}
	  <p><a class="u-url" rel="me nofollow" href="{$me->homepage}">{$me->homepage}</a></p>
	  {/if}
	  {if $me->laconica_profile}
	  <p><a class="u-url" rel="me nofollow" href="{$me->laconica_profile}">{$me->laconica_profile}</a></p>
	  {else}
	  {if ($logged_in)}
{if $isme}
	  <p>Do you have an account on the social web? <a href="/user-edit.php">Add your fediverse profile</a> to your Libre.fm profile.</p>
	  {/if}
	  {/if}
	  {/if}
	  {else}
	  {if ($logged_in)}
{if $isme}
	  <p><a href="/user-edit.php">Add your personal website</a> to your Libre.fm profile.</p>
	  {/if}
	  {/if}
	  {/if}


</div>


      {include file='submenu.tpl'}
