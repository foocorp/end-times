{config_load file='theme.conf' scope='global'}
<!DOCTYPE html>
<html lang="en">
<head>
<!--

Dear Mr McGee,

Please find enclosed the latest demo from Liquid Greek.

Derided by the mainstream as ‘shoegazing also-rans’, the band
have nevertheless persevered with their off-kilter-or-nothing
policy in the hope that someone like your good self will
eventually realise, and thus promote, this violent yet
ultimately beautiful genre which we have dubbed ‘new noise’.

The first track is based upon the high-pitched lamentations of
an unbalanced Lincoln woman, who nurses injured buzzards back
to health inside her dead child’s wardrobe.

We hope you like it.

Yours sincerely,

Liquid Greek

P.S. – We don’t like sport of any kind, and friends at school
were very much thin on the ground

-->
	<meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
	{if !($pagetitle)}
	<title>{$site_name}</title>
	{else}
	<title>{$pagetitle|escape:'html':'UTF-8'} &middot; {$site_name}</title>
	{/if}
	<!-- <script type="text/javascript" src="{$base_url}/js/player.js"></script> -->
	<meta name="author" content="FooCorp catalogue number FOO200 and contributors" />

{if $og_head_links}
{section name=i loop=$og_head_links}
	<meta property="{$og_head_links[i].property|escape:'html':'UTF-8'}" content="{$extra_head_links[i].content|escape:'UTF-8'}">
{/section}
{else}
     <meta property="og:title" content="Libre.fm">
     <meta property="og:description" content="Libre.fm lets you keep track of your music listening habits.">
     <meta property="og:type" content="website">
     <meta property="og:site_name" content="Libre.fm">
     <meta property="og:url" content="https://libre.fm">
     <meta property="og:image" content="https://libre.fm/themes/2024-end-times/social.png">
{/if}

{section name=i loop=$extra_head_links}
{/section}
<meta name="viewport" content="width=device-width,initial-scale=1" />
{if $mattldebug != "1"}
{assign var=random_id value=10|mt_rand:2000}
    <link href="/themes/2024-end-times/nixtape-fix.css?foo=bar&cache={$random_id}" rel="stylesheet">
{/if}
</head>

<body>
  <header>
	<a href="#main" class="a11y-helper" tabindex="0">Skip to main content</a>

{if ($logged_in)}
	  <h1><a id="title" class="navbar-brand" href="/user/{t name=$this_user->name}%1{/t}"><img src="/themes/2024-end-times/Libre.fm_logo.png" alt="{$site_name} profile for {t name=$this_user->name}%1{/t}"></a></h1>
{else}
	  <h1><a href="/"><img src="/themes/2024-end-times/Libre.fm_logo.png" alt="{$site_name} home"></a></h1>
{/if}

	<nav>
	  {include file='menu.tpl'}
	</nav>

  </header>

  <main id="main">




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
