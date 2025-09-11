{if ($logged_in)}
<p><a class="edit-profile-link" href="/user-edit.php">Edit my profile</a></p>
<p><a class="logout-profile-link" href="{$base_url}/login.php?action=logout">{t}Logout{/t}</a></p>
{else}
	  <p><a href="{$base_url}/login.php">
	    {t}Log in{/t}
	</a></p>
{/if}
