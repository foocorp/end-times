<ul class="nav navbar-nav list-inline">
{if ($logged_in)}
&nbsp;
{else}
	<li>
	  <a href="{$base_url}/login.php">
	    {t}Log in{/t}
	</a>
	</li>
{/if}
</ul>
