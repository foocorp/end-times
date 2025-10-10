{*	------------------
	artistlist.tpl
	------------------
	Dynamic smarty template intended to be used on any page with a list of artists.

	@param array  items           Array of artists ((artist, streamable, image, artistlibraryurl, artisturl, tagged, tag, freq, time) .. )
	@param string class           Additional CSS table classes
	@param bool   thead           Show table header
	@param bool   fstream         Show streamable field, used by $i.streamable
	@param bool   fimage          Show image field, used by $i.image
	@param bool   ftag            Show tag field, used by $i.tag
	@param bool   fbutton         Show button field, used by button if list is owned by user
	@param bool   fcount          Show count field, used by $i.freq)
	@param boot   ftime           Show timestamp field, used by $i.time)
	@param string type            Type of list, 'tagged' (used to show correct button)
*}
<ul class="{$class} artistlist">
	{foreach from=$items item=i}
	<li>
		{if $fstream}
		 {if $i.streamable}
		  <!-- <td class="icon" title="Artist has streamable tracks">
		    <span class="glyphicon glyphicon-music">
		    </span>
		  </td> -->
		 {/if}
		{/if}
		{if $i.artistlibraryurl}
		  <a href="{$i.artistlibraryurl}">{$i.artist}</a>
		{else}
		<a href="{$i.artisturl}">{$i.artist}</a>
		{/if}
		{if $fcount}
		&mdash;
		    <span>{$i.freq}</span>
			<progress value="{$i.freq}" max="{$totaltracks}<">
		{/if}
		{if $ftime}
		  {$i.time}
		{/if}
	</li>
	{/foreach}
</ul>
