<ul id="nav" class="navbar-nav ms-auto">
{if ($logged_in)}
<li class="nav-item"><a class="edit-profile-link" href="/user-edit.php">Edit my profile</a></li>
<li class="nav-item"><a class="logout-profile-link" href="{$base_url}/login.php?action=logout">{t}Logout{/t}</a></li>
{else}
	  <li class="nav-item"><a href="{$base_url}/login.php">
	    {t}Log in{/t}
	</a></li>
<li class="nav-item"><a href="{$base_url}/waitlist.php">
	    {t}Join waitlist{/t}
	</a></li>
{/if}
<li class="nav-item"><a target="_blank" href="https://libre.fm/donate.php">Donate</a></li>

</ul>
