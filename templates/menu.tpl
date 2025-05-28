<ul class="nav navbar-nav list-inline">
{if ($logged_in)}
<li><a href="/user/{t name=$this_user->name}%1{/t}">{t name=$this_user->name}%1{/t}</a></li>

{else}
	<li>
	  <a href="{$base_url}/login.php">
	    {t}Log in{/t}
	</a>
	</li>
{/if}
</ul>
