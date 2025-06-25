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

<header style="padding-bottom: 0; margin-bottom: 0">
	  <h1><img src="/themes/2024-end-times/Libre.fm_logo.svg" alt="{$site_name}"></h1>
  </header>

  <main id="main" style="padding: 0">

{if ($totals)}
<div id="user-totals-small" style="border: 1px solid lime; padding: 1em; max-width: 50%; margin: 0 auto;">
<h3>Active user stats</h3>
{$totals}
</div>
{/if}

<h2 style="text-align: left">Libre.fm is currently closed for new registration</h2>

<p>After 16 years, it's time to do something else. Libre.fm is no longer accepting new users for scrobbling music listening habits.</p>

<p><a href="/login.php">Sign in to your existing account</a></p>

<p>Libre.fm will continue to support our existing scrobbling users as long as there are active users. Data exports and more coming soon.</p>

<h2 style="text-align: left">What's next?</h2>

<p>Project Next by Libre.fm. Libre.fm's second act.<br />No AI. Ever. Coming soon.</p>

</main>
</body>
</html>


