{if $artist}
<blockquote class="h-embed" cite="https://libre.fm/users/{$me->name}/scrobble/{$scrobble}">
<div class="h-entry">
<h2>{$me->name}</h2>

<p>Listened to {$track} by {$artist}</p>




<p>{$stamp}</p>
</div>
</blockquote>

{/if}
