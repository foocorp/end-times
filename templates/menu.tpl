<nav><ul>
{if ($logged_in)}
<li><a class="edit-profile-link" href="/user-edit.php">Edit my profile</a></li>
<li><a class="logout-profile-link" href="{$base_url}/login.php?action=logout">{t}Logout{/t}</a></li>
{else}
	  <li><a href="{$base_url}/login.php">
	    {t}Log in{/t}
	</a></li>
{/if}
<li><mark>New!</mark> <a href="https://libre.fm/feed.xml">RSS feed</a></li>
<li><a target="_blank" href="https://status.libre.fm">Server Status</a></li>
<li><a target="_blank" href="https://libre.fm/donate.php">Donate</a></li>
</ul>

{if {$logged_in}}
</nav>
{else}
</nav>
<div style="border: 1px solid red; padding: 12px;">
<p>A message from <a href="https://1800www.com">1800www.com</a>...</p>
<h2>We're on a mission to save the web</h2>

<p>The internet used to be fun and weird. We had IRC, Usenet, blogs and personal websites.</p>

<p>People wrote things, people drew things, people shared things they'd made or seen and they did all this on their own websites.</p>

<p>We're bringing that back, without AI crawlers and billionaires ruining all the fun.</p>

<p><a href="https://1800www.com">Time is running out</a>. The web is being destroyed from within by companies harvesting the creative work of others.</p>
</div>
{/if}
