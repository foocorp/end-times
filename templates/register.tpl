{if isset($activated)}
{$nosidebar=true}
{include file='header.tpl'}
        <h2>{t}You're in!{/t}</h2>
	<p class="lead">{t escape=no}Your account has been activated! You may now login!{/t}</p>
        <p><a class="btn btn-primary btn-lg" href="{$base_url}/login.php">login!</a></p>

</main>
{include file='footer.tpl'}

{elseif isset($registered)}
{$nosidebar=true}
{include file='header.tpl'}
        <h2>{t}Check your email now{/t}</h2>
	<p class="lead">{t}Please follow the link in your email to activate your account!{/t}</p>

</main>
{include file='footer.tpl'}
{else}
{include file='mini-header.tpl'}

      <h2 class="text-center">Sign up for a free account</h1>

      <form class="form-signin" method="post" action=''>

      	{if isset($errors)}
            <div class="alert alert-danger alert-dismissable">
	      <p id='errors'>{$errors}</p>
	    </div>	
	{/if}

        {include file='register-form.tpl'}

      </form>

		<div class="alert alert-info" role="alert">
      	{t}We won't sell, swap or give away your email address. You can optionally include personal data on your profile, which is displayed publicly.{/t}
		</div>

{include file='terms.tpl'}
{include file='mini-footer.tpl'}
{/if}

