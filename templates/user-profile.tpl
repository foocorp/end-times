{include file='header.tpl' subheader='user-header.tpl' showbio=true}

<p><a href="/user/{$me->name}/recap/2024">See {$me->name}'s 2024 recap</a></p>

{if $nowplaying}
<p class="text-center elsewhere"><strong>{t name=$me->name}%1{/t} is currently listening to: </strong></p>

<p class="text-center elsewhere"><img src="https://turtle.libre.fm/cover.php?artist={$nowplaying[0].artist}&album={$nowplaying[0].album}" loading="lazy" alt="" style="background: #666 url(https://turtle.libre.fm/spinner.gif); background-position: center center; background-repeat: no-repeat; " width="120" height="120"></p>

<p class="text-center elsewhere"><a class="alert-link" href="{$nowplaying[0].trackurl}">
	   {$nowplaying[0].track}
	</a>
	by
	<a class="alert-link" href="{$nowplaying[0].artisturl}">
	  {$nowplaying[0].artist}
	</a>
</p>
{/if}

<h2>Recent plays</h2>
{include file="tracklistish.tpl" class=#table# items=$scrobbles fimage=true fstream=true fartist=true flove=true ftime=true}

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
