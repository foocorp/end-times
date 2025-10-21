{if isset($activated)}
{$nosidebar=true}
{include file='mini-header.tpl'}
        <h2>{t}You're in!{/t}</h2>
	<p>{t escape=no}Your account has been activated! You are now on the waitlist.{/t}</p>

</main>
{include file='footer.tpl'}

{elseif isset($registered)}
{$nosidebar=true}
{include file='mini-header.tpl'}
        <h2>{t}Check your email now{/t}</h2>
	<p>{t}Please follow the link in your email to activate your account!{/t}</p>

</main>
{include file='mini-footer.tpl'}
{else}
{include file='mini-header.tpl'}

      <h2 class="text-center">Join the waitlist</h2>

      <p>This is a waitlist for <a href="https://1800www.com">1800www.com</a> amd Libre.fm. In future you will be invited to join 1800www.com, which will also grant you access to Libre.fm.</p>

      <form class="form-signin" method="post" action=''>

      	{if isset($errors)}
            <div class="alert alert-danger alert-dismissable">
	      <p id='errors'>{$errors}</p>
	    </div>	
	{/if}

<fieldset>
<p class="form-group">
  <label for='email'>{t}Email address{/t}</label>
        <input type="email" class="form-control" placeholder="{t}Your e-mail address:{/t}" id="email" name="email" required />
</p>

<p>
        <label class="checkbox">
          <input type="checkbox" required value="remember-me" name="foo-check"> I read this form carefully, double-checked my email address. I understand this is a waitlist for a future project. I am over 18 years of age.
        </label>
</p>
<p>
        <button class="btn btn-lg btn-success" name="register" type="submit" value="{t}Join waitlist{/t}">Join waitlist</button>
</p>
</fieldset>

      </form>

      	<p class="text-center"><small>{t}We won't sell, swap or give away your email address. You can optionally include personal data on your profile, which is displayed publicly.{/t}</small></p>

{include file='mini-footer.tpl'}
{/if}

