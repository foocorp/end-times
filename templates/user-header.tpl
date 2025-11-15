<div class="h-card alert alert-dark">
{if $me->fullname}
<h2 class="p-name card-title">{$me->fullname}</h2>
<p class="lead">{$me->name}</p>
{else}
<h2 class="p-name card-title">{$me->name}</h2>
{/if}
<p><img class="u-photo img-thumbnail" style="background: whitesmoke url(https://turtle.libre.fm/spinner.gif); background-position: center center; background-repeat: no-repeat; " loading="lazy" height="90" width="90" src="{$me->getAvatar(90)}" alt=""></p>



{if $totaltracks}
	  <p class="card-subtitle mb-2 text-body-secondary">
	      <strong>{$totaltracks}</strong> tracks recorded
	  </p>
{else}
{if ($logged_in)}
{if $isme}
<div class="container">
<div class="row justify-content-center">
<div class="col-12 col-xs-12 mt-20 alert alert-danger">
Please configure your <a href="https://wiki.libre.fm/Clients">music client</a> to post to Libre.fm or use <a href="https://webscrobbler.com">Web Scrobbler</a>. Need help? <a href="mailto:support@libre.fm">support@libre.fm</a>.
</div>
</div>
</div>
	  {/if}
	  {/if}
	  {/if}

{if $totaltracks}
{if $me->bio}
	  <p class="p-note alert alert-primary" id="bio">
	    {$me->bio|escape:'html':'UTF-8'}
	  </p>
      <p class="h-geo">
        {$me->location}
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
