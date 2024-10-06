<ul class="nav navbar-nav">
{if ($logged_in)}
<li class="dropdown">
        <a href="/user/{t name=$this_user->name}%1{/t}" class="dropdown-toggle" data-toggle="dropdown">Signed in as 
{t name=$this_user->name}%1{/t}</a> (<a href="{$base_url}/login.php?action=logout">
	    {t}Logout{/t}
</a>)</li>
	
{else}
	<li>
	  <a href="{$base_url}/login.php">
	    <span class="glyphicon glyphicon-log-in">
	    </span>
	    {t}Log in{/t}
	</a>
	</li>
	<li>
	  <a href="{$base_url}/register.php">
	    <span class="glyphicon glyphicon-ok">
	    </span>
	    {t}Sign up{/t}
	  </a>
	</li>
{/if}
<li><a target="_blank" href="https://librefm.wordpress.com/2024/10/06/bunch-of-updates-to-libre-fm-this-week-2024-10-06/">This week in Libre.fm (October 6th 2024)</li>
<li>Help? <a href="mailto:support@libre.fm">support@libre.fm</a> or <a target="_blank" href="https://github.com/foocorp/hacienda/issues">File an issue</a></li>
	<li><a href="{$base_url}/donate.php">Donate</a></li>
</ul>
