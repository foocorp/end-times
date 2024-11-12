<fieldset>
<p class="form-group">
<label for='username'>{t}Username{/t}</label>
<input type="text" class="form-control" placeholder="{t}Your username:{/t}" id="username" name="username" required autofocus />
</p>
<p class="form-group">
  <label for='email'>{t}Email address{/t}</label>
        <input type="email" class="form-control" placeholder="{t}Your e-mail address:{/t}" id="email" name="email" required />
</p>
<p class="form-group">
  <label for='password'>{t}Password{/t}</label>
  <input class="form-control" id='password' name='password' type='password' value='' required>
</p>
<p class="form-group">
  <label for='password-repeat'>{t}Your password again:{/t}</label>
        <input type="password" class="form-control" id="password-repeat" name="password-repeat" required />
</p>
<p>
        <label class="checkbox">
          <input type="checkbox" value="remember-me" name="foo-check"> {t}I read this form carefully, and double-checked my email address first, honest.{/t}
        </label>
</p>
<p>
        <button class="btn btn-lg btn-success" name="register" type="submit" value="{t}Sign up{/t}">Sign up</button>
</p>
</fieldset>
