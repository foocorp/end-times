	<h2>What's popular on Libre.fm?</h2>
	<p class="text-center">The artists loved by Libre.fm users</p>

	<ul id="popular">
	{section name=i loop=$tagcloud}
		<li style='font-size:{$tagcloud[i].size}'><a href='{$tagcloud[i].pageurl}' title='{t loves=$tagcloud[i].count}This artist was loved %1 times{/t}' rel='tag'>{$tagcloud[i].name}</a></li>
	{/section}
	</ul>
