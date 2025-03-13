<ul class="nav navbar-nav list-inline">
{if ($logged_in)}
<li><a href="/user/{t name=$this_user->name}%1{/t}">{t name=$this_user->name}%1{/t}</a></li>

{else}
	<li>
	  <a href="{$base_url}/login.php">
	    {t}Log in{/t}
	</a>
	</li>
	<li>
	  <a href="{$base_url}/about/">
	    {t}Sign up{/t}
	  </a>
	</li>
{/if}
        <li><a href="{$base_url}/popular">{t}What's Popular?{/t}</a></li>
	<li><a href="{$base_url}/donate.php">Donate</a></li>
        <li><a href="https://blog.libre.fm/">Blog</a></li>
</ul>
