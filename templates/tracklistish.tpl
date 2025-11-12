{*	------------------
	tracklist.tpl
	------------------
	Dynamic smarty template intended to be used on any page with a list of tracks.

	@param array  items           Array of tracks ((artist, track, streamable, loved, image, artistlibraryurl, tracklibraryurl, artisturl, trackurl, tagged, tag, freq) .. )
	@param string class           CSS table class (if class equals 'library' *libraryurl will be used instead of *url)
	@param bool   thead           Show table header
	@param bool   fstream         Show streamable field, used by $i.streamable
	@param bool   flove           Show loved field, used by $i.loved
	@param bool   fartist         Show artist in name field, used by $i.artist
	@param bool   fimage          Show image field, used by $i.image
	@param bool   ftag            Show tag field, used by $i.tag
	@param bool   fbutton         Show button field, used by button if page is owned by user
	@param bool   fcount          Show count field, used by $i.freq
	@param bool   ftime           Show time field, used by $i.timehuman
	@param string url_sort_name   URL string to toggle sort order by name
	@param string url_sort_count  URL string to toggle sort order by count
	@param string type            Type of list, 'tagged' (used to show correct button)
*}
	<ul class="list-group {$class}">
	{foreach from=$items item=i}
	<li class="list-group-item">
    {if $me->uniqueid}
     <a aria-label="Share listening to {$i.track} by {$i.artist}, {$i.timehuman}" title="Share {$i.track} by {$i.artist}" href="/user/{$me->name}/scrobble/{$i.time}">{$i.track}{if $fartist} by {$i.artist}{/if}</a>
    {else}
			{if $i.tracklibraryurl}
				<a href="{$i.tracklibraryurl|escape:'html'}">{$i.track}</a>
			{else}
				<a href="{$i.trackurl|escape:'html'}">{$i.track}</a>
			{/if}
			{if $fartist} by
				{if $i.artistlibraryurl}
					<a href="{$i.artistlibraryurl|escape:'html'}">{$i.artist}</a>
				{else}
					<a href="{$i.artisturl|escape:'html'}">{$i.artist}</a>
				{/if}
			{/if}
    {/if}
  </li>
	{/foreach}
	</ul>
