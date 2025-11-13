<ul id="nav" class="navbar-nav ms-auto">
{if ($logged_in)}
<li class="nav-item">{if "" != $this_user->getAvatar(24)}<a class="edit-profile-link" href="/user/{$this_user->name}"><img src="{$this_user->getAvatar(24)}" width="24" height="24" alt loading="lazy" title="Go to your profile"></a> &nbsp;{/if}<a class="edit-profile-link" title="Go to your profile" href="/user/{$this_user->name}">{$this_user->name}</a></li>
<li class="nav-item"><a href="/user/{$me->name}/recap/2024" title="Your 2024 recap">2024</a></li>
<li class="nav-item"><a class="edit-profile-link" href="/user-edit.php">Edit my profile</a></li>
<li class="nav-item"><a target="_blank" href="https://libre.fm/donate.php">Donate</a></li>
<li class="nav-item"><a class="logout-profile-link" href="{$base_url}/login.php?action=logout">{t}Logout{/t}</a></li>
{else}
	  <li class="nav-item"><a href="{$base_url}/login.php">
	    {t}Log in{/t}
	</a></li>
<li class="nav-item"><a href="{$base_url}/waitlist.php">
	    {t}Join waitlist{/t}
	</a></li>
<li class="nav-item"><a target="_blank" href="https://libre.fm/donate.php">Donate</a></li>
{/if}

</ul>
