{include file='header.tpl' subheader='user-header.tpl' showbio=true}

{if !empty($scrobblecount)}
	<h2>{t name=$me->name}%1{/t} listened to {$scrobblecount} songs in {$year}</h2>
{/if}

{if !empty($topsongs)}
	<h2>{t name=$me->name}%1{/t} most listened to song of {$year}</h2>
	<p><a href="{$topsongs[0].trackurl}">{$topsongs[0].track} by {$topsongs[0].artist}</a> with {$topsongs[0].freq} plays</p>
{/if}

{if !empty($topartists)}
	<h2>{t name=$me->name}%1{/t} top artists for {$year}</h2>
	<ul>
		{section name=i loop=$topartists}
			<li>{$topartists[i].artist}</li>
		{/section}
	</ul>
{/if}








{include file='footer.tpl'}
