{include file='mini-header.tpl'}

      <h2 class="text-center">Welcome back!</h1>

	<p class="pt-20">Please note that we are required to have a privacy policy and terms and conditions posted now. By logging in you agree to these terms.</p>

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
