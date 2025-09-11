{config_load file='theme.conf' scope='global'}
<!DOCTYPE html>
<html>
  <head>
    <title>Project Next by Libre.fm</title>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
    <link rel="stylesheet" href="/style.css">
    <meta name="viewport" content="width=device-width,initial-scale=1" />
<link href="/themes/2024-end-times/next.css?foo=bar&cache=1955&fsdssadasads" rel="stylesheet">
  </head>
  <body>
    <main>
      <div class="container">

          <h1>Time is running out.</h1>

          <p>The web is being destroyed from within by companies harvesting the creative work of others.</p>

          <blockquote>Most websites don't have second acts.<br />
          Not here. We do things differently here. </blockquote>

          <h2>This is Libre.fm's second act.</h2>

          <p>No AI. Ever.</p>

          <p>LLMs need not apply. Bots not welcome. Closed to crawlers.</p>

          <h3>Save the web before it's too late.</h3>

          <p><a href="https://1800www.com">A creative workspace for creative humans</a>.</p>

          <hr>

          <p><small>If you have an existing Libre.fm account, you're already registered when we launch.<br><a href="http://nofuckingai.com">A waitlist is available</a> for people who missed the initial 14+ year registration window: </small></p>

	  <p><a href="/login.php">Classic Libre.fm login</a></p>

	  {$totals}

	{if ($recents)}
<h2 class="text-center">Recently listened to by the Libre.fm community (and it is a community)</h2>
{$recents}
{/if}


      </div>
    </main>
  </body>
</html>



