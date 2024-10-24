{include file='header.tpl'}

{if $track}

<h2><a href="/user/{$me->name}">{$me->name}</a></h2>

<p>Listened to {$track} {if $artist}by {$artist}{/if}{if $album}on {$album}{/if}</p>




<p>{$stamp}</p>



{/if}

{include file='footer.tpl'}
