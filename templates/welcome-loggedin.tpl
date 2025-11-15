{include file='header.tpl'}

<div class="alert alert-dark">

<h2>Welcome back, <a href="/user/{t name=$this_user->name}%1{/t}">{t name=$this_user->name}%1{/t}</a>!</h2>

<h3>What's new?</h3>

<ul>
<li>New design!</li>
<li><a href="/user/{t name=$this_user->name}%1{/t}/recap/2024">See your 2024 music recap</a></li>
<li><a href="https://libre.fm/feed.xml">We have an RSS feed!</a>
<li><a href="https://mat.tl">I quit social media</a>, so I made <a target="_blank" href="https://status.libre.fm">status.libre.fm</a> for server status.</li>
<li>Libre.fm has a <a target="_blank" href="https://libre.fm/donate.php">donations page</a>.</li>
</ul>

<hr>

{if ($totals)}
<div id="user-totals-small">
{$totals}
</div>
{/if}

{if ($recents)}
<h3>Recently listened to by the Libre.fm community (and it is a community)</h3>
{$recents}
{/if}

{include file='footer.tpl'}
