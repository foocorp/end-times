{config_load file='theme.conf' scope='global'}
<!DOCTYPE html>
<html>
  <head>
    <title>Libre.fm by 1800www.com</title>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
    <link rel="stylesheet" href="/style.css">
	<link rel="alternate" type="application/rss+xml" title="RSS Feed" href="https://libre.fm/feed.xml">
    <meta name="viewport" content="width=device-width,initial-scale=1" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
<link href="/themes/2024-end-times/next.css?foo=bar&cache=1955&fsdssadasads" rel="stylesheet">

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
  </head>
  <body>
    <main>
      <div class="container">

          <h1>Libre.fm</h1>

	  		<p><a href="/login.php">Classic Libre.fm login</a> or <a href="/waitlist.php">join the waitlist</a> for an account (soon)</p>

	  		{$totals}

{if ($recents)}
<h2 class="text-center">Recently listened to by the Libre.fm community (and it is a community)</h2>
{$recents}
{/if}

      </div>
    </main>
  </body>
</html>



