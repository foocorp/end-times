<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width,initial-scale=1">
<title>{$site_name}</title>
    {assign var=random_id value=10|mt_rand:2000}
    <link href="/themes/2024-end-times/nixtape-fix.css?foo=bar&cache={$random_id}" rel="stylesheet">
    <meta property="og:title" content="Libre.fm">
    <meta property="og:description" content="Libre.fm lets you keep track of your music listening habits.">
    <meta property="og:type" content="website">
    <meta property="og:site_name" content="Libre.fm">
    <meta property="og:url" content="https://libre.fm">
    <meta property="og:image" content="https://libre.fm/themes/2024-end-times/social.png">
</head>
<body class="mini-header">
	<a href="#main" class="a11y-helper" tabindex="0">Skip to main content</a>
<header>
{if ($logged_in)}
	  <h1><a id="title" class="navbar-brand" href="/user/{t name=$this_user->name}%1{/t}"><img src="/themes/2024-end-times/Libre.fm_logo.png" alt="{$site_name} profile"></a></h1>
{else}
	  <h1><a id="title" class="navbar-brand" href="/"><img src="/themes/2024-end-times/Libre.fm_logo.png" alt="{$site_name} home"></a></h1>
{/if}
</header>
<main id="main">
