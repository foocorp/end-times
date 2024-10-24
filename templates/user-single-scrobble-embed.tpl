{if $track}
<blockquote class="h-embed" cite="https://libre.fm/users/{$me->name}/scrobble/{$scrobble}">
<div class="h-entry">
<h2 class="p-name"><a href="https://libre.fm/user/{$me->name}">{$me->name}</a></h2>
	<p><img class="u-photo" src="{$me->getAvatar(48)}" alt="[ {$me->name} avatar ]"></p>

<p>Listened to <span class="p-music-track">{$track}</span> {if $artist}by <span class="p-music-artist">{$artist}</span>{/if}{if $album} on <span class="p-music-album">{$album}</span>{/if}</p>

<time datetime="{$stamp}">{$stomp}</time>

</div>
</blockquote>

{/if}
