{include file='header.tpl'}

{if $track}

<div class="h-entry">
<fieldset>

<h2 class="text-center"class="p-name"><a href="/user/{$me->name}">{$me->name}</a></h2>

	<p class="text-center"><img class="u-photo" src="{$me->getAvatar(158)}" alt=""></p>

{if $album}
<p class="text-center"><a href="{$url}"><img src="https://turtle.libre.fm/cover.php?artist={$artist}&album={$album}" height="250" alt=""></a></p>

<p class="text-center">Listened to <a href="{$url}"><span class="p-music-track">{$track|escape:'html':'UTF-8'}</span> {if $artist}by <span class="p-music-artist">{$artist|escape:'html':'UTF-8'}</span>{/if}{if $album} on <span class="p-music-album">{$album|escape:'html':'UTF-8'}</span>{/if}</a></p>



{else}
{if $image}
<p class="text-center"><img height="250" style="outline: 1px solid white;" src="{$image}" alt=""/></p>
{/if}
<p class="text-center">Listened to <span class="p-music-track">{$track|escape:'html':'UTF-8'}</span> {if $artist}by <span class="p-music-artist"><a href="/artist/{$artist|escape:'html':'UTF-8'}">{$artist|escape:'html':'UTF-8'}</a></span>{/if}</p>


{/if}

<p class="text-center"><time class="text-center" datetime="{$stamp}">{$stomp}</time></p>

</fieldset>
</div>

{if ($logged_in)}
{if $isme}
<details>
&middot;
</details>
{/if}
{/if}

<ul>
{section name=i loop=$extra_head_links}
	<li><a rel="{$extra_head_links[i].rel|escape:'html':'UTF-8'}" href="{$extra_head_links[i].href|escape:'UTF-8'}" type="{$extra_head_links[i].type|escape:'html':'UTF-8'}">{$extra_head_links[i].title|escape:'html':'UTF-8'}</a></li>
{/section}
	<li><a href="https://shareopenly.org/share/?url=https://libre.fm/user/{$me->name}/scrobble/{$scrobble}&text={$me->name} {if $me->laconica_profile}({$me->laconica_profile}){/if} listened to {$track|escape:'html':'UTF-8'} {if $artist}by {$artist|escape:'html':'UTF-8'}{/if}{if $album} on {$album|escape:'html':'UTF-8'}{/if}%0A%0A%23LibreFM %23indieweb %23music %23listening %23ShareOpenly%0A%0A">Share this on social media</a></li>
</ul>

<h3>Embed this anywhere</h3>

<p>Embed this scrobble as an image on another website.</p>

<h4>HTML</h4>

<textarea>
<a href="{$bob}"><img src="{$bob}/image" width="480" height="90" alt="{$me->name} listened to {$track|escape:'html':'UTF-8'} by {$artist|escape:'html':'UTF-8'} ({$album|escape:'html':'UTF-8'})"></a>
</textarea>

<h4>BBCode</h4>

<textarea>
[url={$bob}][img width="480" height="90" alt="{$me->name} listened to {$track|escape:'html':'UTF-8'} by {$artist|escape:'html':'UTF-8'} ({$album|escape:'html':'UTF-8'})"]{$bob}/image[/img][/url]
</textarea>


<p><small>This is a new feature that gives you a unique URL for each song you've ever listened to. It can also be embedded in another page.</small></p>

<p><a href="https://github.com/foocorp/hacienda/issues/53">Report a bug with this feature or request a new format</a></p>

{/if}

{include file='footer.tpl'}
