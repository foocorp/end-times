{include file='header.tpl' subheader='album-header.tpl'}

<h4>Tracks</h4>
{artisttracks artist=$album->artist_name album=$album->name}
{include file='tracklist.tpl' class=#table# items=$artisttracks fstream=true}
{if $add_track_link}<a href='{$add_track_link}'><strong>{t}Add new track{/t}</strong></a>{/if}

{* Hack to get an album player for now, $album->isStreamable() would be better *}
{if $artisttracks[0].streamable}
	{$streamable = true}
	{$album_station = "librefm://artist/{$album->artist_name}/album/{$album->name}"}
{/if}

	<p>{if $album->mbid}<a href="https://musicbrainz.org/release/{$album->mbid}">{$album->name} on MusicBrainz</a> &middot;
{/if}<a href="https://www.discogs.com/search?q={$album->artist_name}+{$album->name}">Find {$album->name} on Discogs</a> &middot; <a href="https://bandcamp.com/search?q={$album->artist_name}+{$album->name}&from=results">Find {$album->name} on Bandcamp</a> &middot; <a href="https://www.youtube.com/results?search_query={$album->artist_name}+{$album->name}">Find {$album->name} on YouTube</a></p>

{if $album->mbid}<p><small>Cover Art provided by <a href="https://coverartarchive.org/">Cover Art Archive</a>, a project of MusicBrainz and the Internet Archive.</small></p>{/if}


{include file='footer.tpl' sideplayer=true station=$album_station}
