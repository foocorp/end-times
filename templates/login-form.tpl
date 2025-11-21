  <fieldset>
<div class="mb-3">
  <label class="form-label" for='username'>{t}Username{/t}</label>
  <input class="form-control form-control-lg" id='username' name='username' type='text' value='{$username}' required autofocus>
</div>
<div class="mb-3">
  <label class="form-label" for='password'>{t}Password{/t}</label>
  <input class="form-control form-control-lg" id='password' name='password' type='password' value='' required>
</div>

<div class="mb-3 form-check">
  <input class="form-check-input" type='checkbox' checked name='remember' id='remember' />
  <label class="form-check-label" for='remember'> {t}Remember my login{/t}</label>
</div>
<input name="return" type="hidden" value="{$return|htmlentities}" />
<p><button class="btn btn-success btn-lg" type='submit' name='login' value='{t}Login{/t}' />{t}Login{/t}</button></p>
</fieldset>

<p><a href="/reset.php">Reset your password</a> or <a href="mailto:support@libre.fm">support@libre.fm</a> if you're having any issues</p>
