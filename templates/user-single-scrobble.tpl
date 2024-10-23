{include file='header.tpl' subheader='user-header.tpl'}

{if $page->scrobbles}
	{include file='scrobble.tpl' class=#librarytable# items=$page->scrobbles thead=true fartist=true ftag=true ftime=true fbutton=true flove=true fstream=true type='scrobble'}
{/if}

{include file='footer.tpl'}
