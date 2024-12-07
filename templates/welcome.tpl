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
    {assign var=random_id value=10|mt_rand:2000}
    <link href="/themes/2024-end-times/nixtape-fix.css?foo=bar&cache={$random_id}" rel="stylesheet">
</head>

<body>
	<a href="#main" class="a11y-helper" tabindex="0">Skip to main content</a>

<header>
{if ($logged_in)}
	  <h1><a id="title" class="navbar-brand" href="/user/{t name=$this_user->name}%1{/t}"><img src="/themes/2024-end-times/Libre.fm_logo.svg" alt="{$site_name} profile for {t name=$this_user->name}%1{/t}"></a></h1>
{else}
	  <h1><img src="/themes/2024-end-times/Libre.fm_logo.svg" alt="{$site_name}"></h1>
{/if}

<p>We are bored in the city, there is no longer any Temple of the Sun.</p>

  </header>

  <main id="main">

{if ($logged_in)}
<h2 class="text-center">Welcome back, <a href="/user/{t name=$this_user->name}%1{/t}">{t name=$this_user->name}%1{/t}</a></h2>
<p class="text-center"><a href="/user/{t name=$this_user->name}%1{/t}/recap/2024">See your 2024 music recap</a></p>

{if ($totals)}
<div id="user-totals-small">
{$totals}
</div>
{/if}
<p class="text-center">See what's coming soon in the <a href="https://roadmap.libre.fm/">Libre.fm roadmap</a></p>
<p class="text-center">Bug report? Feature request? <a href="https://github.com/foocorp/hacienda/issues">File an issue</a></p>

{else}
<h2 class="text-center">Libre.fm lets you keep track of your music listening habits.</h2>
<p class="text-center"><a href="/about/">Learn more about how Libre.fm works</a></p>
{if ($totals)}
<div id="user-totals">
{$totals}
</div>
{/if}
<p class="text-center"><a href="https://libre.fm/login.php">Sign in</a> or <a href="/register.php">register</a></p>
{/if}

{if ($recents)}
<h3>Recent plays</h3>
<ul>
{$recents}
</ul>
{/if}

<div id="tops"{if ($logged_in)}class="logged-in"{/if}>
{if ($tops)}
<h3>Check out these fine users</h3>
<ul>
{$tops}
</ul>
{/if}
</div>

</main>
</body>
</html>


