<header>
	  <h1><a id="title" class="navbar-brand" href="{$base_url}">{$site_name}</a></h1>

  </header>

  <main>




				{if $nosidebar}
                                <!-- nosb -->
				{else}
{if isset($subheader)}
					<header>
						
							{include file="$subheader"}
					
					</header>	
{/if}
					<section>
				{/if}

<h2>we are bored in the city</h2>

<h3>Libre.fm lets you keep track of your music listening habits</h3>

{if ($logged_in)}
Welcome <a href="/user/{t name=$this_user->name}%1{/t}">{t name=$this_user->name}%1{/t}</a>
<p><a href="https://roadmap.libre.fm/">Libre.fm roadmap</a></p>
<p><a href="https://github.com/foocorp/hacienda/issues">File an issue</a></p>

{else}
<p><a href="https://libre.fm/login.php">Sign in</a> or <a href="/register.php">register</a></p>
{/if}


<h2>must read</h1>

<p><a href="https://bored.city">bored.city</a></p>

{include file='footer.tpl'}
