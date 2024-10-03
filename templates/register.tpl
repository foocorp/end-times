{if isset($activated)}
{$nosidebar=true}
{include file='header.tpl'}
        <h2>{t}You're in!{/t}</h2>
	<p>{t escape=no}Your account has been activated! You may now login!{/t}</p>
        <p><a class="btn btn-primary btn-lg" href="{$base_url}/login.php">login!</a></p>
 <h2>P.S...</h2>
        <p>Are you following <a href="https://social.coop/@mattl" target="_blank">@mattl on Mastodon</a> or <a href="http://bsky.app/profile/mat.tl" target="_blank">@mat.tl on Bluesky</a>?</p>

</main>
{include file='footer.tpl'}

{elseif isset($registered)}
{$nosidebar=true}
{include file='header.tpl'}
        <h2>{t}Check your email now{/t}</h2>
	<p>{t}Please follow the link in your email to activate your account!{/t}</p>
 <h2>P.S...</h2>
        <p>Are you following <a href="https://social.coop/@mattl" target="_blank">@mattl on Mastodon</a> or <a href="http://bsky.app/profile/mat.tl" target="_blank">@mat.tl on Bluesky</a>?</p>

</main>
{include file='footer.tpl'}
{else}
{include file='mini-header.tpl'}

      <h1 class="text-center">Sign up for a free account</h1>

      <form class="form-signin" method="post" action=''>

      	{if isset($errors)}
            <div class="alert alert-danger alert-dismissable">
	      <button type="button" class="close" data-dismiss="alert"
	      aria-hidden="true">&times;</button>
	      <p id='errors'>{$errors}</p>
	    </div>	
	{/if}

        {include file='register-form.tpl'}

      </form>

      	<p class="text-center"><small>{t}We won't sell, swap or give away your email address. You can optionally include personal data on your profile, which is displayed publicly.{/t}</small></p>

{include file='mini-footer.tpl'}
{/if}

