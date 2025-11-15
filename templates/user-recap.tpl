{include file='header.tpl' subheader='user-header.tpl' showbio=true}

<h2>Libre.fm recap for {$year}</h2>

{if !empty($scrobblecount)}
   <div class="alert alert-info">
	<span class="lead"><a href="/user/{t name=$me->name}%1{/t}">{t name=$me->name}%1{/t}</a> listened to {$scrobblecount} songs in {$year}</span>
	<p>(That's approximately {$scrobblemins} hours of music!)</p>
</div>
{/if}

{if !empty($topsongs)}
<div class="alert alert-secondary">
	<span class="lead">{t name=$me->name}%1{/t} had one favorite song in {$year}: <a href="{$topsongs[0].trackurl}">{$topsongs[0].track} by {$topsongs[0].artist}</a> with {$topsongs[0].freq} plays</span>
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

{if ($user_first_year < 2024)}

<ul>
{for $var=$user_first_year to 2024}
 <li><a href="/user/{t name=$me->name}%1{/t}/recap/{$var}">{$var} recap</a></li>
{/for}
</ul>

{/if}

{include file='footer.tpl'}
