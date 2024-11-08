{config_load file='theme.conf' scope='global'}
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	{if !($pagetitle)}
	<title>{$site_name}</title>
	{else}
	<title>{$pagetitle|escape:'html':'UTF-8'} &mdash; {$site_name}</title>
	{/if}
	<script type="text/javascript" src="{$base_url}/js/player.js"></script>
	<meta name="author" content="FooCorp catalogue number FOO200 and contributors" />
{section name=i loop=$extra_head_links}
	<link rel="{$extra_head_links[i].rel|escape:'html':'UTF-8'}" href="{$extra_head_links[i].href|escape:'UTF-8'}" type="{$extra_head_links[i].type|escape:'html':'UTF-8'}" title="{$extra_head_links[i].title|escape:'html':'UTF-8'}"  />
{/section}
<meta name="viewport" content="width=device-width,initial-scale=1" />
    <link href="/themes/2024-end-times/nixtape-fix.css?foo=bar&cache={$random_id}" rel="stylesheet">
</head>

<body>
<header>
{if ($logged_in)}
	  <h1><a id="title" class="navbar-brand" href="/user/{t name=$this_user->name}%1{/t}">{$site_name}</a></h1>
{else}
	  <h1><a id="title" class="navbar-brand" href="/">{$site_name}</a></h1>
{/if}

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


{if ($logged_in)}
Welcome <a href="/user/{t name=$this_user->name}%1{/t}">{t name=$this_user->name}%1{/t}</a>
<p><a href="https://roadmap.libre.fm/">Libre.fm roadmap</a></p>
<p><a href="https://github.com/foocorp/hacienda/issues">File an issue</a></p>

{else}
<h3>Libre.fm lets you keep track of your music listening habits</h3>
<p><a href="https://libre.fm/login.php">Sign in</a> or <a href="/register.php">register</a></p>
{/if}

</section>
</main>
</body>
</html>


