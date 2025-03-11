{include file='header.tpl' subheader='artist-header.tpl'}

<div about="{$id}" typeof="mo:MusicArtist">

	<div class="vcard">

{* We load player in sidebar instead, see footer include at bottom of file
		{if $streamable}
		<div id='player-container'>
		{include file='player.tpl'}
		</div>
		{/if}
*}

		{if $bio_summary}
		<div class="note" id="bio" property="bio:olb" datatype="" style='clear: left;'>
		<h4>{t}Biography{/t}</h4>
		<p>{$bio_summary}</p>
			{if $bio_content}
				<p id='bio_content'>{$bio_content}</p>
			{/if}
		</div>
		{/if}
	</div>

	<h3>{t}Albums{/t}</h3>
	<!-- <p><small>Limited to 25 albums</small></p> -->
	<ul>
		{section name=i loop=$albums max=250}
		{if $albums[i]->name}
		<li about="{$albums[i]->id}" property="dc:title" content="{$albums[i]->name|escape:'html':'UTF-8'}" typeof="mo:Record" class="haudio">
					<a rel="foaf:page" href="{$albums[i]->getURL()}">{$albums[i]->name|escape:'html':'UTF-8'}</a>
		</li>{/if}
		{/section}	
		{if $add_album_link}<li><a href='{$add_album_link}'><strong>[{t}Add new album{/t}]</strong></a></li>{/if}
	</ul>

	{if !empty($similarArtists)}
		<h3>{t}Similar free artists{/t}</h3>
		<ul class="tagcloud">
		{section name=i loop=$similarArtists}
			<li style='font-size:{$similarArtists[i].size}'><a href='{$similarArtists[i].url}'>{$similarArtists[i].artist}</a></li>
		{/section}
		</ul>
	{/if}


	{if !empty($tagcloud)}
		<h3>{t}Tags used to describe this artist{/t}</h3>
		<ul class="tagcloud">
		{section name=i loop=$tagcloud}
			<li style='font-size:{$tagcloud[i].size}'><a href='{$tagcloud[i].pageurl}' title='{t uses=$tagcloud[i].count}This tag was used %1 times{/t}' rel='tag'>{$tagcloud[i].name}</a></li>
		{/section}
		</ul>
	{/if}

	<hr>

	{if $artist->getListenerCount()}
	<section class="h-feed" id="tops">
	<h3 id="listeners">Top listeners</h3>
	<ul>
        {foreach from=$artist->getTopListeners() item=i}
        <li class="h-entry">
	<a class="u-url" href="{$i.userurl}">{$i.username}</a>
        </li>
        {/foreach}
        </ul>
	</section>
	{/if}


<h3>Elsewhere</h3>

<ul>
<li><a href="https://www.youtube.com/results?search_query={$artist->name}">Find {$artist->name} on YouTube</a></li>
{if $mblinks}
<li><a href="https://musicbrainz.org/artist/{$artist->mbid}">{$artist->name} on MusicBrainz</a></li>
{foreach from=$mblinks item=v}
{$mblinks|@print_r}}

   <li><a href="{$v[0]}">{$artist->name} {$v[1]}</a></li>
{/foreach}
	{/if}
</ul>

{if $mblinks}
<p>Links provided by MusicBrainz.</p>
{/if}
	
	<!-- 

	<a href="https://www.discogs.com/search?q={$artist->name}&type=artist">Find {$artist->name} on Discogs</a> | <a href="https://bandcamp.com/search?q={$artist->name}&item_type=b&from=results">Find {$artist->name} on Bandcamp</a> | <a href="https://www.youtube.com/results?search_query={$artist->name}">Find {$artist->name} on YouTube</a></p>
	 -->

</div>

{include file='footer.tpl' sideplayer=true}

