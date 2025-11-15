{include file='header.tpl' subheader='user-header.tpl' showbio=true}

<h2>{t name=$me->name}%1{/t}'s Libre.fm recap for {$year}</h2>

{if !empty($scrobblecount)}
   <div class="alert alert-info">
	<p class="lead"><a href="/user/{t name=$me->name}%1{/t}">{t name=$me->name}%1{/t}</a> listened to {$scrobblecount} songs in {$year}</p>
	<p>(That's approximately {$scrobblemins} hours of music!)</p>
</div>
{/if}

{if !empty($topsongs)}
<div class="alert alert-secondary">
	<p class="lead">{t name=$me->name}%1{/t} had one favorite song in {$year}: <a href="{$topsongs[0].trackurl}">{$topsongs[0].track} by {$topsongs[0].artist}</a> with {$topsongs[0].freq} plays</p>
</div>
{/if}

{if !empty($topartists)}
	<h2><a href="/user/{t name=$me->name}%1{/t}">{t name=$me->name}%1{/t}</a> top artists for {$year}</h2>
	<ol class="list-group">
		{section name=i loop=$topartists}
			<li class="list-group-item">{$topartists[i].artist} ({$topartists[i].freq} plays)</li>
		{/section}
	</ol>
{/if}



{include file='footer.tpl'}
