{*	------------------
	albumlist.tpl
	------------------
	Dynamic smarty template intended to be used on any page with a list of albums.

	@param array  items           Array of albums ((artist, album, streamable, image, artistlibraryurl, albumlibraryurl, artisturl, albumurl, tagged, tag, freq) .. )
	@param string class           Additional CSS table classes
	@param bool   thead           Show table header
	@param bool   fstream         Show streamable field, used by $i.streamable
	@param bool   fartist         Show artist in name field, used by $i.artist
	@param bool   fimage          Show image field, used by $i.image
	@param bool   fbutton         Show button field, used by button if page is owned by user
	@param bool   fcount          Show count field, used by $i.freq)
	@param string url_sort_name   URL string to toggle sort order by name
	@param string url_sort_count  URL string to toggle sort order by count
	@param string type            Type of list, 'tagged' (used to show correct button)
*}
<ul class="long-list">
	{foreach from=$items item=i}
        {if $i.album}
<!-- {$i.mbid} -->
	<li>
			{if $i.albumlibraryurl}
				<a href="{$i.albumlibraryurl|escape:'html'}">{$i.album}</a>
			{else}
				<a href="{$i.albumurl|escape:'html'}">{$i.album}</a>
			{/if}
			{if $fartist} by
				{if $i.artistlibraryurl}
					<a href="{$i.artistlibraryurl|escape:'html'}">{$i.artist}</a>
				{else}
					<a href="{$i.artisturl|escape:'html'}">{$i.artist}</a>
				{/if}
			{/if}
	</li>
        {/if}
	{/foreach}
</ul>
