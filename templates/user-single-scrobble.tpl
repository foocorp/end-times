{include file='header.tpl'}

{if $track}

<div class="h-entry alert alert-dark">
<fieldset>

<h2 class="p-name"><a href="/user/{$me->name}">{$me->name}</a></h2>

	<p<img loading="lazy" class="u-photo img-thumbnail" src="{$me->getAvatar(158)}" alt=""></p>

{if $album}
<p><a href="{$url}"><img loading="lazy" class="img-thumbnail" src="https://turtle.libre.fm/cover.php?artist={$artist}&album={$album}" style="background: whitesmoke url(https://turtle.libre.fm/spinner.gif); background-position: center center; background-repeat: no-repeat; " width="250" height="250" alt=""></a></p>

<p>Listened to <a href="{$url}"><span class="p-music-track">{$track|escape:'html':'UTF-8'}</span> {if $artist}by <span class="p-music-artist">{$artist|escape:'html':'UTF-8'}</span>{/if}{if $album} on <span class="p-music-album">{$album|escape:'html':'UTF-8'}</span>{/if}</a></p>



{else}
{if $image}
<p class="text-center"><img height="250" class="img-thumbnail" style="outline: 1px solid white;" src="{$image}" alt=""/></p>
{/if}
<p class="text-center">Listened to <span class="p-music-track">{$track|escape:'html':'UTF-8'}</span> {if $artist}by <span class="p-music-artist"><a href="/artist/{$artist|escape:'html':'UTF-8'}">{$artist|escape:'html':'UTF-8'}</a></span>{/if}</p>


{/if}

<p><time datetime="{$stamp}">{$stomp}</time></p>

</fieldset>
</div>

<ul>
{section name=i loop=$extra_head_links}
	<li><a rel="{$extra_head_links[i].rel|escape:'html':'UTF-8'}" href="{$extra_head_links[i].href|escape:'UTF-8'}" type="{$extra_head_links[i].type|escape:'html':'UTF-8'}">{$extra_head_links[i].title|escape:'html':'UTF-8'}</a></li>
{/section}
</ul>

<h3>Embed this anywhere</h3>

<p class="lead">Embed this scrobble as an image on another website.</p>

<h4>HTML</h4>

<div class="mb-3">
<textarea class="form-control" rows="6">
<a href="{$bob}"><img loading="lazy" src="{$bob}/image" width="480" height="90" alt="{$me->name} listened to {$track|escape:'html':'UTF-8'} by {$artist|escape:'html':'UTF-8'} ({$album|escape:'html':'UTF-8'})"></a>
</textarea>
</div>

<h4>BBCode</h4>

<div class="mb-3">
<textarea class="form-control" rows="6">
[url={$bob}][img width="480" height="90" alt="{$me->name} listened to {$track|escape:'html':'UTF-8'} by {$artist|escape:'html':'UTF-8'} ({$album|escape:'html':'UTF-8'})"]{$bob}/image[/img][/url]
</textarea>
</div>

<div class="alert alert-warning">
This is a new feature that gives you a unique URL for each song you've ever listened to. It can also be embedded in another page.
</div>

{/if}

{if ($logged_in)}
{if $isme}
<details>
<summary>
&middot;
</summary>
<form action="/delete-a-scrobble.php" method="post">
<input type="hidden" name="scrobble" value="{$scrobble}">
<input type="hidden" name="isme" value="{$isme}">
<input type="hidden" name="username" value="{$me->name}">
<input type="hidden" name="sid" value="{$me->uniqueid}">
<input type="checkbox" name="check" value="1">
<input type="submit" name="submit" value="Delete this scrobble">
</form>
</details>
{/if}
{/if}

{include file='footer.tpl'}
