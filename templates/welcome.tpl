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
{if ($logged_in)}
	  <h1><a id="title" class="navbar-brand" href="/user/{t name=$this_user->name}%1{/t}"><img src="/themes/2024-end-times/Libre.fm_logo.png" alt="{$site_name} profile for {t name=$this_user->name}%1{/t}"></a></h1>
{else}
	  <h1><a href="/"><img src="/themes/2024-end-times/Libre.fm_logo.png" alt="{$site_name} home"></a></h1>
{/if}
  </header>



<p class="text-center">This page generated in {$page_time} seconds.</p>


</main>
</body>
</html>


