{include file='header.tpl' subheader='user-header.tpl' showbio=true}

<h2>{t name=$me->name}%1{/t}'s Libre.fm recap for {$year}</h2>

{if !empty($scrobblecount)}
	<p>{t name=$me->name}%1{/t} listened to {$scrobblecount} songs in {$year}</p>
	<p>(That's approximately {$scrobblemins} hours of music!)</p>
{/if}

{if !empty($topsongs)}
	<p>{t name=$me->name}%1{/t} had one favorite song in {$year}: <a href="{$topsongs[0].trackurl}">{$topsongs[0].track} by {$topsongs[0].artist}</a> with {$topsongs[0].freq} plays</p>
{/if}

{if !empty($topartists)}
	<h2>{t name=$me->name}%1{/t} top artists for {$year}</h2>
	<ol>
		{section name=i loop=$topartists}
			<li>{$topartists[i].artist} ({$topartists[i].freq} plays)</li>
		{/section}
	</ol>
{/if}

<p><a href="https://shareopenly.org/share/?url=https://libre.fm/user/{$me->name}/recap/{$year}&text=https://libre.fm/user/{$me->name}/ listened to {$scrobblecount} songs in {$year}. Favorite song? {$topsongs[0].track} by {$topsongs[0].artist}%0A%0A%23LibreFM %23indieweb %23music %23listening %23ShareOpenly%0A%0A">Share this on social media</a></p>









{include file='footer.tpl'}
