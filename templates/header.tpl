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
<link href="https://cdn.cache.lol/profiles/themes/css/base.css?v=2024-09-10" rel="stylesheet">
    <link href="https://cdn.cache.lol/profiles/themes/css/dracula.css" rel="stylesheet">
    <link href="/themes/2024-end-times/nixtape-fix.css?foo=bar" rel="stylesheet">
</head>

<body>
  <header>
	  <h1><a id="title" class="navbar-brand" href="{$base_url}">{$site_name}</a></h1>

	<nav>
	  {include file='menu.tpl'}
	</nav>

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
