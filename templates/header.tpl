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
<style>
:root {
    --color: #191919;
    --body-background: #666;
    --content-background: #fff;
    --link-color: darkblue;
    --row-modifier: black;
    --branding-background: purple;
    --branding-color: white;
    --collapse-table-width: 300px;
}

@media (prefers-color-scheme: dark) {
    :root {
        --color: #fff;
        --body-background: #000;
        --content-background: #342c2c;
        --link-color: #13b8eb;
        --row-modifier: white;
        --branding-background: #0b0;
        --branding-color: #fff;
    }
}

@media (max-width: var(--collapse-table-width)) {
    .endtimes-table tr:has(th) {
        display: flex;
        gap: 1ch;
    }

    .endtimes-table tr:has(td) {
        display: flex;
        gap: 1ch;
    }
}


header, footer {
    text-align: center;
}

nav ul {
    text-align: center;
    padding: 0 !important;
}

nav li {
    list-style: none;
}

body {
    color: var(--color);
    margin-inline: auto;
    margin-block: 0;
    font-family: sans-serif;
    background-color: var(--body-background);
    min-width: 300px;
    max-width: 800px;
}

body > * {
    background: var(--content-background);
    padding: 2ch;
    line-height: 1.45;
}

header > * {
    margin-block: 0;
}

a {
    text-underline-offset: 0.2em;
}

body > header {
    background: var(--branding-background);
    color: var(--branding-color);
}

body > header a {
    color: var(--branding-color);
}

main > header {
    background: none;
}

main > header p {
    margin-block: 0;
}

header p img {
    display: block;
    margin-inline: auto;
    border-radius: 1ch;
}

.endtimes-table {
    width: 100%;
}

.endtimes-table th {
    background: var(--color);
    text-align: center;
    font-weight: bold;
    color: var(--content-background);
    padding: 1.1ch
}

.endtimes-table th a {
    color: var(--content-background);
}

.endtimes-table tr:has(td):nth-child(2n) {
    background: color-mix(in srgb, var(--content-background), var(--row-modifier) 6%);
}

.endtimes-table td {
    padding: 0.2ch;
}

.endtimes-table td.time {
    text-align: end;
}


.end-times-alert {
    background: #faffbe;
    padding: 1em;
    text-align: center;
}

.help-block {
    font-size: 80%;
    color: #666
}

.img-responsive {
    width: 100%;
    max-width: 260px !important;
}

hr {
    display: none;
}

.nav.nav-pills {
    display: flex;
    list-style-type: none;
    gap: 0;
    padding: 0;
    margin: 0;
    width: 100%;
}

.nav.nav-pills li {
    flex-grow: 2;
}

.nav.nav-pills li a {
    color: var(--color);
    margin: 0;
    padding: 0.5ch 1ch 0.5ch;
    display: block;
    text-decoration: none;
    border-style: solid;
    border-width: 0 0 1px 0;
}

.nav.nav-pills li.active a {
    border-width: 0 0 5px 0;
}

.h-card {
    width: 50%;
    margin-bottom: 5ch;
    border-radius: 1ch;
    margin-inline: auto;
    box-shadow: 0 0 10px var(--branding-background);
    padding: 0.5ch 1ch 0.5ch;
    display: grid;
    gap: 1ch;
}

a {
    color: var(--branding-background);
}

a:visited {
    color: color-mix(in srgb, var(--link-color), var(--body-background) 40%);
}

.h-card a {
    color: var(--branding-background);
}

.h-card > * {
    margin: 0;
}</style>
</head>

<body>
  <header>
{if ($logged_in)}
	  <h1><a id="title" class="navbar-brand" href="/user/{t name=$this_user->name}%1{/t}">{$site_name}</a></h1>
{else}
	  <h1><a id="title" class="navbar-brand" href="/">{$site_name}</a></h1>
{/if}

<p><small>(<a href="https://github.com/foocorp/hacienda/issues/47">I broke the CSS on purpose</a>)</small></p>

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
