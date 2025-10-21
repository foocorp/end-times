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
	<link rel="alternate" type="application/rss+xml" title="RSS Feed" href="https://libre.fm/feed.xml">
    {assign var=random_id value=10|mt_rand:2000}
    <link href="/themes/2024-end-times/no-future-no-experience.css?foo=bar&cache={$random_id}" rel="stylesheet">
</head>

<body>
	<a href="#main" class="a11y-helper" tabindex="0">Skip to main content</a>

<header style="padding-bottom: 0; margin-bottom: 0">
	  <h1><a title="Your profile" href="/user/{t name=$this_user->name}%1{/t}">Libre.fm</a> by <a href="https://1800www.com">1800www.com</a></h1>
  </header>

  <main id="main">

<h2 style="text-align: center;">Welcome back, <a href="/user/{t name=$this_user->name}%1{/t}">{t name=$this_user->name}%1{/t}</a>! &mdash; <a href="/user/{t name=$this_user->name}%1{/t}/recap/2024">see your 2024 music recap</a></h2>


<p style="text-align: center;"><a href="https://libre.fm/feed.xml">We have an RSS feed!</a></p>
<p style="text-align: center;"><a href="https://mat.tl">I quit social media</a>, so I made <a target="_blank" href="https://status.libre.fm">status.libre.fm</a> for server status.</p>

<p style="text-align: center;">Libre.fm has a <a target="_blank" href="https://libre.fm/donate.php">donations page</a>.</p>

<hr>

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
