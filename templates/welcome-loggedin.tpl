<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	{if !($pagetitle)}
	<title>{$site_name} by 1800www.com</title>
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
    <link href="/themes/2024-end-times/no-future-no-experience.css?foo=bar&cache={$random_id}" rel="stylesheet">
</head>

<body>
	<a href="#main" class="a11y-helper" tabindex="0">Skip to main content</a>

<header style="padding-bottom: 0; margin-bottom: 0">
	  <h1><a title="Your profile" href="/user/{t name=$this_user->name}%1{/t}">Libre.fm</a> by <a href="https://1800www.com">1800www.com</a></h1>
  </header>

  <main id="main">

<p>Welcome back, <a href="/user/{t name=$this_user->name}%1{/t}">{t name=$this_user->name}%1{/t}</a>! &mdash; <a href="/user/{t name=$this_user->name}%1{/t}/recap/2024">see your 2024 music recap</a></p>

{if ($totals)}
<div id="user-totals-small">
{$totals}
</div>
{/if}

{if ($recents)}
<h2 class="text-center">Recently listened to by the Libre.fm community (and it is a community)</h2>
{$recents}
{/if}

</main>

<footer>

<hr>

<address><a href="mailto:support@libre.fm">support@libre.fm</a></address>

<p>This page generated in {$page_time} seconds.</p>

</footer>
</body>
</html>
