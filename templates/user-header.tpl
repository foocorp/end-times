<div id="user-profile-header">
    <div class="row">
      <div class="col-sm-3">
	<img class="img-circle img-responsive img-thumbnail" src="{$me->getAvatar(158)}" alt="[ {$me->name} avatar ]">
      </div>
      <div class="col-sm-9">
	  <h1>{$me->name}
	  </h1>
	  {if $me->getTotalTracks()}
	  <p>
	    <span class="label label-primary">
	      <span class="glyphicon glyphicon-play"></span>
	      {$me->getTotalTracks()} plays
	    </span>
	  </p>
	  {/if}
	                    {if $me->getTotalTracks()}
	  <div id='user_bio'>
	    <p>{$me->bio|escape:'html':'UTF-8'}</p>
	  </div>
	  {/if}
                  {if $me->getTotalTracks()}
	  {if $me->homepage}
	  <p>Personal website: <a rel="me nofollow" href="{$me->homepage}">{$me->homepage}</a></p>
	  {/if}
	  {if $me->laconica_profile}
	  <p>Fediverse: <a rel="me nofollow" href="{$me->laconica_profile}">{$me->laconica_profile}</a></p>
	  {/if}
	  {/if}

{if $me->homepage}
	  <p>Personal website: <a rel="me nofollow" href="{$me->homepage}">{$me->homepage}</a></p>
	  {/if}

<div id='user_bio'>
	    <p>{$me->bio|escape:'html':'UTF-8'}</p>
	  </div>

      </div>
    </div>
    <div class="margin-top">
      {include file='submenu.tpl'}
    </div>
</div>
<br/>
