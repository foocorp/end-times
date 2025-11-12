<fieldset>
<p class="mb-3">
<label class="form-label" for='username'>{t}Username{/t}</label>
<input type="text" class="form-control" placeholder="{t}Your username:{/t}" id="username" name="username" required autofocus />
</p>
<p class="mb-3">
  <label for='email'>{t}Email address{/t}</label>
        <input type="email" class="form-control" placeholder="{t}Your e-mail address:{/t}" id="email" name="email" required />
</p>
<p class="mb-3">
  <label for='emailagain'>{t}Email address{/t} (again)</label>
        <input type="email" class="form-control" placeholder="{t}Your e-mail address:{/t}" id="emailagain" required />
</p>
<p class="mb-3">
  <label for='password'>{t}Password{/t}</label>
  <input class="form-control" id='password' name='password' type='password' value='' required>
</p>
<p class="mb-3">
  <label for='password-repeat'>{t}Your password again:{/t}</label>
        <input type="password" class="form-control" id="password-repeat" name="password-repeat" required />
</p>
<p>
        <label class="checkbox">
          <input type="checkbox" required value="remember-me" name="foo-check"> I read this form carefully, double-checked my email address and agree to the <a href="/terms" target="_blank">terms and conditions</a> and <a href="/privacy" target="_blank">privacy policy</a>. I am over 18 years of age. Gen AI is trash. LLMs are trash. Open Web forever.
        </label>
</p>
<p>
        <button class="btn btn-lg btn-success" name="register" type="submit" value="{t}Sign up{/t}">Sign up</button>
</p>
</fieldset>
