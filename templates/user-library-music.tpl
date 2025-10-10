{include file='header.tpl' subheader='user-header.tpl'}

<h2>Library</h2> {include file='submenu.tpl' submenu=$page->menu}

<h3>Top 100 Artists by playcount</h3>
<p>This page is <a href="/donate.php">cached for 24 hours</a>.</p>

{if $page->artists}
	{include file='artistlist.tpl' class=#librarytable# items=$page->artists thead=true fstream=true fimage=true fcount=true}
{/if}

{include file='footer.tpl'}
