{include file='header.tpl'}

{if $track}

<h2><a href="/user/{$me->name}">{$me->name}</a></h2>

<p>Listened to {$track} {if $artist}by {$artist}{/if}{if $album}on {$album}{/if}</p>




<p>{$stamp}</p>

<p><small>This is a new feature that gives you a unique URL for each song you've ever listened to. It can also be embedded in another page.</small></p>

{section name=i loop=$extra_head_links}
	<a rel="{$extra_head_links[i].rel|escape:'html':'UTF-8'}" href="{$extra_head_links[i].href|escape:'UTF-8'}" type="{$extra_head_links[i].type|escape:'html':'UTF-8'}">{$extra_head_links[i].title|escape:'html':'UTF-8'}</a>
{/section}

<p><a href="https://github.com/foocorp/hacienda/issues/53">Report a bug with this feature</a></p>

{/if}

{include file='footer.tpl'}
