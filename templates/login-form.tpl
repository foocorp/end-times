  <fieldset>
<div class="mb-3">
  <label class="form-label" for='username'>{t}Username{/t}</label>
  <input class="form-control" id='username' name='username' type='text' value='{$username}' required autofocus>
</div>
<div class="mb-3">
  <label class="form-label" for='password'>{t}Password{/t}</label>
  <input class="form-control" id='password' name='password' type='password' value='' required>
</div>
<div class="mb-3 form-check">
  <input class="form-check-input" type='checkbox' name='remember' id='remember' />
  <label class="form-check-label" for='remember'> {t}Remember my login{/t}</label>
</div>
<input name="return" type="hidden" value="{$return|htmlentities}" />
<p><button class="btn btn-primary btn-lg" type='submit' name='login' value='{t}Login{/t}' />{t}Login{/t}</button></p>
</fieldset>
