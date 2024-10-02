<!DOCTYPE html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
<title>Libre.fm</title>
<meta name="viewport" content="width=device-width,initial-scale=1" />
<link href="https://cdn.cache.lol/profiles/themes/css/base.css?v=2024-09-10" rel="stylesheet">
    <link href="https://bored.city/omg.lol-neonknight.css" rel="stylesheet">

</head>

<body>
<main>
<h1>we are bored in the city</h1>

{if ($logged_in)}
Welcome <a href="/user/{t name=$this_user->name}%1{/t}">{t name=$this_user->name}%1{/t}</a>
{else}
<p><a href="https://libre.fm/login.php">Sign in</a> or <a href="/register.php">register</a></p>
{/if}

<p><a href="https://roadmap.libre.fm/">Libre.fm roadmap</a></p>
<p><a href="https://github.com/foocorp/hacienda/issues">File an issue</a></p>

<h2>must read</h1>

<p><a href="https://bored.city">bored.city</a></p>

</main>

</body>
</html>

