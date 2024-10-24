{if $track}
<blockquote class="h-embed" cite="https://libre.fm/users/{$me->name}/scrobble/{$scrobble}">
<div class="h-entry">
<h2><a href="https://libre.fm/user/{$me->name}">{$me->name}</a></h2>

<p>Listened to {$track} {if $artist}by {$artist}{/if}{if $album} on {$album}{/if}</p>





<p>{$stamp}</p>
</div>
</blockquote>

{/if}
