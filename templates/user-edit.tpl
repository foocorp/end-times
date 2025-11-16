{include file='header.tpl' subheader='user-header.tpl' showbio=true}

<div class="alert alert-warning" role="alert">
Got Last.fm? <a href='{$base_url}/user-connections.php'>Connect your account here</a> and scrobbles to Libre.fm go to both services!</strong></p>
</div>

<hr />

<h2>Edit your profile</h2>

	  {if $me->homepage}
	  {if $me->laconica_profile}
	<p class="bd-callout bd-callout-info">Hey! Glad to see you're using Libre.fm's new personal website and Fediverse features! Why not <a href="https://indieweb.org/discuss">join us on the IndieWeb discussion</a> (Slack, Discord, IRC).</p>
 	  {/if}
	  {/if}

<!-- <p><a class="btn btn-success btn-lg" href='{$base_url}/artist-signup.php'>Get an artist account</a></p> -->

<!-- <p><a class="btn btn-default btn-lg" href='{$base_url}/artist-signup.php'>Change my password</a></p>

<p><a class="btn btn-warning btn-lg" href='{$base_url}/artist-signup.php'>Change my email address</a></p>

<p><button class="btn btn-danger btn-lg" href='{$base_url}/artist-signup.php'>Delete my account</button></p> -->

{if isset($errors)}
{section loop=$errors name=error}
    <p>{$errors[error]}</p>
{/section}
{/if}

<form class="form-signin" action='{$base_url}/user-edit.php' method='post'>

  <div class="form-group">
    <p><label class="form-label" for='fullname'>{t}Full name:{/t}</label></p>
    <p><input size="40" maxlength="40" type="text" class="form-control form-control-lg" name='fullname' id='fullname' value='{$fullname|escape:'html':'UTF-8'}' /></p>
    <p class="form-text">{t}Enter a name here, if you want to. It'll appear on your profile.{/t}</p>
  </div>

<div class="alert alert-info">
<div class="form-group" id="email">
<p><label class="form-label">Email address:</label></p>
<p><tt>{$email}</tt></p>
<p>If you need to change it, please email <a href="mailto:support@libre.fm">support@libre.fm</a></p>
</div>
</div>

<div class="form-group">
    <p><label class="form-label" for='location'>{t}Location:{/t}</label></p>
    <p><input size="40" maxlength="40" type="text" class="form-control form-control-lg" name='location' id='location' value='{$location|escape:'html':'UTF-8'}' /></p>
    <p class="form-text">{t}Where do you live? (or want to live){/t}</p>
</div>

<div class="form-group">
    <p><label class="form-label" for='homepage'>{t}Website address:{/t}</label></p>
    <p><input size="40" maxlength="255" type="url" class="form-control form-control-lg" placeholder="https://{$me->name}.example.com/" name='homepage' id='homepage' value='{$homepage|escape:'html':'UTF-8'}' /></p>
    <p class="form-text">{t}Got a website? Tell the world!{/t}</p>
  </div>

  <div class="alert alert-info">Shows up on your profile once you start listening to music</div>

<div class="alert alert-success">
<p>We use <a href="https://libravatar.org" target="_blank">Libravatar.org</a> for avatars. You can sign up there and make sure you use the same email address so it'll show up here too.</p>
</div>

  <div class="form-group"><p><label class="form-label" for='bio'>{t}Mini Biography:{/t}</label></p>
    <p><textarea cols="40" rows="5" class="form-control form-control-lg" name='bio' id='bio'>{$bio|escape:'html':'UTF-8'}</textarea></p>
  </div>

    <div class="form-group">
      <p><label class="form-label" for='laconica_profile'>{t}Fediverse/social web (ie. Mastodon, GNU social, etc.) profile:{/t}</label></p>
      <p><input class="form-control form-control-lg" size="40" maxlength="255" type="url" placeholder="https://example.com/@{$me->name}" name='laconica_profile' id='laconica_profile' value='{$laconica_profile|escape:'html':'UTF-8'}' />
    </p>

    <div class="form-group">

	<h3>Changing your password</h3>

	<p>Enter your new password in the following two fields:</p>

    <p><label class="form-label" for='password_1'>{t}Password:{/t}
      <span>{t}Leave this blank if you don't want to change your password.{/t}</span>
    </label></p>
    <p><input class="form-control form-control-lg" name='password_1' id='password_1' size="32" maxlength="32" type='password' autocomplete="off" value='' />
 </p>
</div>
<div class="form-group">
    <p><label class="form-label" for='password_2'>{t}Confirm Password:{/t}</label></p>
    <p><input class="form-control form-control-lg" name='password_2' id='password_2' size="32" maxlength="32" type='password' autocomplete="off" value='' /></p>
  </div>

  <p class="callout callout-warning"><strong>Please note profile edits are still cached for approximately 1-2 mins, sorry about that.</strong></p>

<div class="alert alert-danger">
<h3>Delete your account?</h3>
<p class="form-check">
	<input type='checkbox' class="form-check-input" id='delete_account_broken' name='delete_account' id='delete' />
	      <label for='delete' class="form-check-label alert-danger">Danger Zone: 
		{t}Delete my account{/t}
      </label>
   </p>
</details>

  <div class="form-group">
    <button class="btn btn-success btn-block" type='submit' value='{t}Change{/t}'>{t}Update profile{/t}</button>
    <input name='submit' value='1' type='hidden' />
  </div>

</form>

{include file='footer.tpl'}
