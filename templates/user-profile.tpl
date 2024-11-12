{include file='header.tpl' subheader='user-header.tpl' showbio=true}

{if $nowplaying}
<h2>
<strong>Now playing: </strong>
	<span class="glyphicon glyphicon-music"></span>
	<a class="alert-link" href="{$nowplaying[0].trackurl}">
	   {$nowplaying[0].track}
	</a>
	by
	<a class="alert-link" href="{$nowplaying[0].artisturl}">
	  {$nowplaying[0].artist}
	</a>
</h2>
{/if}

{userscrobbles userid=$me->uniqueid  limit=50}
<h3>Recent plays</h3>
{include file="tracklist.tpl" class=#table# items=$userscrobbles fimage=true fstream=true fartist=true flove=true ftime=true}

<!-- 
{if !empty($lovedArtists)}
	<h4>{t name=$me->name}Libre artists that %1 loves{/t}</h4>
	<ul>
		{section name=i loop=$lovedArtists}
			<li><a href='{$lovedArtists[i].pageurl}'>{$lovedArtists[i].name}</a></li>
		{/section}
	</ul>
{/if}

{if !empty($recommendedArtists)}
	<h4>{t name=$me->name}Libre artists that %1 might like{/t}</h4>
	<ul>
		{foreach from=$recommendedArtists item=artist}
			<li><a href='{$artist.url}'>{$artist.artist}</a></li>
		{/foreach}
	</ul>
{/if} -->

{include file='footer.tpl'}
