<nav><ul>
{if ($logged_in)}
<li><a class="edit-profile-link" href="/user-edit.php">Edit my profile</a></li>
<li><a class="logout-profile-link" href="{$base_url}/login.php?action=logout">{t}Logout{/t}</a></li>
{else}
	  <li><a href="{$base_url}/login.php">
	    {t}Log in{/t}
	</a></li>
{/if}</ul>
</nav>
