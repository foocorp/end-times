{include file='header.tpl'}

{if $artist}

<h2><a href="/user/{$me->name}">{$me->name}</a></h2>

<p>Listened to {$track} by {$artist}</p>




<p>{$stamp}</p>



{/if}

{include file='footer.tpl'}
