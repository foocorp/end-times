{include file='header.tpl' subheader='user-header.tpl' showbio=true}

<h2><a href="/user/{t name=$me->name}">{t name=$me->name}%1{/t}</a>'s Libre.fm recap for {$year}</h2>

{if !empty($scrobblecount)}
	<p><a href="/user/{t name=$me->name}">{t name=$me->name}%1{/t}</a> listened to {$scrobblecount} songs in {$year}</p>
	<p>(That's approximately {$scrobblemins} hours of music!)</p>
{/if}

{if !empty($topsongs)}
	<p><a href="/user/{t name=$me->name}">{t name=$me->name}%1{/t}</a> had one favorite song in {$year}: <a href="{$topsongs[0].trackurl}">{$topsongs[0].track} by {$topsongs[0].artist}</a> with {$topsongs[0].freq} plays</p>
{/if}

{if !empty($topartists)}
	<h2><a href="/user/{t name=$me->name}">{t name=$me->name}%1{/t}</a> top artists for {$year}</h2>
	<ol>
		{section name=i loop=$topartists}
			<li>{$topartists[i].artist} ({$topartists[i].freq} plays)</li>
		{/section}
	</ol>
{/if}

{include file='footer.tpl'}
