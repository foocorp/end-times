{include file='mini-header.tpl'}

      <h2 class="text-center">Welcome back!</h1>

	<p class="pt-20">Please note that we are required to have a <a href="/privacy">privacy policy</a> and <a href="/terms">terms and conditions</a> posted now. <strong>By logging in you agree to these terms.</strong></p>

    {if isset($errors)}
    <div class="alert alert-danger alert-dismissable">
      <button type="button" class="close" data-dismiss="alert"
	      aria-hidden="true">&times;</button>
      <p id='errors'>{$errors}</p>
    </div>	
    {/if}

    <form method="post" class="form-signin" role='form'>
      {include file='login-form.tpl'}
    </form>

{include file='mini-footer.tpl'}
