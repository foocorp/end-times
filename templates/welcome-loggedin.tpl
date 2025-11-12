{include file='header.tpl'}

<h2 style="text-align: center;">Welcome back, <a href="/user/{t name=$this_user->name}%1{/t}">{t name=$this_user->name}%1{/t}</a>! &mdash; <a href="/user/{t name=$this_user->name}%1{/t}/recap/2024">see your 2024 music recap</a></h2>


<p style="text-align: center;"><a href="https://libre.fm/feed.xml">We have an RSS feed!</a></p>
<p style="text-align: center;"><a href="https://mat.tl">I quit social media</a>, so I made <a target="_blank" href="https://status.libre.fm">status.libre.fm</a> for server status.</p>

<p style="text-align: center;">Libre.fm has a <a target="_blank" href="https://libre.fm/donate.php">donations page</a>.</p>

<hr>

{if ($totals)}
<div id="user-totals-small" style="text-align: center;">
{$totals}
</div>
{/if}

{if ($recents)}
<h3 class="text-center">Recently listened to by the Libre.fm community (and it is a community)</h3>
{$recents}
{/if}

{include file='footer.tpl'}
