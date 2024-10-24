{include file='header.tpl'}



{if $track}

<div class="h-entry">
<fieldset>

<h2 class="p-name"><a href="/user/{$me->name}">{$me->name}</a></h2>

<p>Listened to <span class="p-music-track">{$track}</span> {if $artist}by <span class="p-music-artist">{$artist}</span>{/if}{if $album} on <span class="p-music-album">{$album}</span>{/if}</p>




<time>{$stamp}</time>

</fieldset>
</div>
<details>
<p><small>This is a new feature that gives you a unique URL for each song you've ever listened to. It can also be embedded in another page.</small></p>

<ul>
{section name=i loop=$extra_head_links}
	<li><a rel="{$extra_head_links[i].rel|escape:'html':'UTF-8'}" href="{$extra_head_links[i].href|escape:'UTF-8'}" type="{$extra_head_links[i].type|escape:'html':'UTF-8'}">{$extra_head_links[i].title|escape:'html':'UTF-8'}</a></li>
	<li><a href="https://shareopenly.org/share/?url=https://libre.fm/user/{$me->name}/scrobble/{$scrobble}&text={$me->name} listened to {$track} {if $artist}by {$artist}{/if}{if $album} on {$album}{/if} %23librefm %23indieweb %23music %23shareopenly">Share this on social media</a></li>
{/section}
</ul>

<p><a href="https://github.com/foocorp/hacienda/issues/53">Report a bug with this feature</a></p>

{if ($logged_in)}
{if $this_user->uniqueid == $me->uniqueid}

<p><small>This is a scrobble you made, so you should be able to delete it from here. Coming soon.</small></p>
{/if}
{/if}
</details>

{/if}

{include file='footer.tpl'}
