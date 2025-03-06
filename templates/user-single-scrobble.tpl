{include file='header.tpl'}

{if $track}

<div class="h-entry">
<fieldset>

<h2 class="p-name"><a href="/user/{$me->name}">{$me->name}</a></h2>

	<p><img class="u-photo" src="{$me->getAvatar(158)}" alt=""></p>

{if $album}

<p>Listened to <a href="{$url}"><span class="p-music-track">{$track|escape:'html':'UTF-8'}</span> {if $artist}by <span class="p-music-artist">{$artist|escape:'html':'UTF-8'}</span>{/if}{if $album} on <span class="p-music-album">{$album|escape:'html':'UTF-8'}</span>{/if}</a></p>

<p><img align="right" src="https://turtle.libre.fm/cover.php?artist={$artist}&album={$album}" height="64" alt=""></p>


{else}
<p>Listened to <span class="p-music-track">{$track|escape:'html':'UTF-8'}</span> {if $artist}by <span class="p-music-artist">{$artist|escape:'html':'UTF-8'}</span>{/if}</p>


{/if}

<time datetime="{$stamp}">{$stomp}</time>

</fieldset>
</div>

<ul>
{section name=i loop=$extra_head_links}
	<li><a rel="{$extra_head_links[i].rel|escape:'html':'UTF-8'}" href="{$extra_head_links[i].href|escape:'UTF-8'}" type="{$extra_head_links[i].type|escape:'html':'UTF-8'}">{$extra_head_links[i].title|escape:'html':'UTF-8'}</a></li>
	<li><a href="https://shareopenly.org/share/?url=https://libre.fm/user/{$me->name}/scrobble/{$scrobble}&text={$me->name} {if $me->laconica_profile}({$me->laconica_profile}){/if} listened to {$track|escape:'html':'UTF-8'} {if $artist}by {$artist|escape:'html':'UTF-8'}{/if}{if $album} on {$album|escape:'html':'UTF-8'}{/if}%0A%0A%23LibreFM %23indieweb %23music %23listening %23ShareOpenly%0A%0A">Share this on social media</a></li>
{/section}
</ul>

<details>
<fieldset>
<p><small>This is a new feature that gives you a unique URL for each song you've ever listened to. It can also be embedded in another page.</small></p>

<p><a href="https://github.com/foocorp/hacienda/issues/53">Report a bug with this feature</a></p>

{if ($logged_in)}
{if $this_user->uniqueid == $me->uniqueid}

<p><small>This is a scrobble you made, so you should be able to delete it from here. Coming soon.</small></p>
{/if}
{/if}
</fieldset>
</details>

{/if}

{include file='footer.tpl'}
