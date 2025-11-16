<fieldset>
<div class="mb-3">
<label class="form-label" for='username'>{t}Username{/t}</label>
<input type="text" class="form-control form-control-lg" placeholder="{t}Your username:{/t}" id="username" name="username" required autofocus />
</div>
<div class="mb-3">
  <label for='email'>{t}Email address{/t}</label>
        <input type="email" class="form-control form-control-lg" placeholder="{t}Your e-mail address:{/t}" id="email" name="email" required />
</div>
<div class="mb-3">
  <label for='emailagain'>{t}Email address{/t} (again)</label>
        <input type="email" class="form-control form-control-lg" placeholder="{t}Your e-mail address:{/t}" id="emailagain" required />
</div>
<div class="mb-3">
  <label for='password'>{t}Password{/t}</label>
  <input class="form-control form-control-lg" id='password' name='password' type='password' value='' required>
</div>
<div class="mb-3">
  <label for='password-repeat'>{t}Your password again:{/t}</label>
        <input type="password" class="form-control" id="password-repeat" name="password-repeat" required />
</div>
<div class="mb-3 form-check">
  <input class="form-check-input" type='checkbox' required name='remember' id='remember' value="remember-me" name="foo-check" />
  <label class="form-check-label" for='remember'>I read this form carefully, double-checked my email address and agree to the <a href="/terms" target="_blank">terms and conditions</a> and <a href="/privacy" target="_blank">privacy policy</a>. I am over 18 years of age. Gen AI is trash. LLMs are trash. Open Web forever.
        </label></label>
</div>
<div class="mb-3">
<button class="btn btn-lg btn-success" name="register" type="submit" value="{t}Sign up{/t}">Sign up</button>
</div>
</fieldset>
