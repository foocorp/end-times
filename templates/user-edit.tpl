{include file='header.tpl' subheader='user-header.tpl' showbio=true}

<p class="end-times-alert"><strong>Got Last.fm? <a style="font-weight: bold" href='{$base_url}/user-connections.php'>Connect your account here</a> and scrobbles to Libre.fm go to both services!</strong></p>

<hr />

<h2>Edit your profile</h2>

	  {if $me->homepage}
	  {if $me->laconica_profile}
	<p class="end-times-alert">Hey! Glad to see you're using Libre.fm's new personal website and Fediverse features! Why not <a href="https://indieweb.org/discuss">join us on the IndieWeb discussion</a> (Slack, Discord, IRC).</p>
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
    <p><label for='fullname'>{t}Full name:{/t}</label></p>
    <p><input size="40" maxlength="40" type="text" class="form-control" name='fullname' id='fullname' value='{$fullname|escape:'html':'UTF-8'}' /></p>
    <p class="help-block">{t}Enter your name here, if you want to.{/t}</p>
  </div>

<div class="form-group" id="email">
<p><label>Email address:</label><span>{$email}</span></p>
<p>If you need to change it, please email <a href="mailto:support@libre.fm">support@libre.fm</a></p>
</div>

<div class="form-group">
    <p><label for='location'>{t}Location:{/t}</label></p>
    <p><input size="40" maxlength="40" type="text"class="form-control" name='location' id='location' value='{$location|escape:'html':'UTF-8'}' /></p>
    <p class="help-block">{t}Where do you live?{/t}</p>
</div>

<div class="form-group">
    <p><label for='homepage'>{t}Website address:{/t}</label></p>
    <p><input size="40" maxlength="255" type="url" class="form-control" placeholder="https://{$me->name}.example.com/" name='homepage' id='homepage' value='{$homepage|escape:'html':'UTF-8'}' /></p>
  </div>

  <p class="end-times-alert"><strong>Shows up on your profile once you start listening to music</strong></p>

<div class="form-group">
<p>We use <a href="https://libravatar.org" target="_blank">Libravatar.org</a> for avatars. You can sign up there and make sure you use the same email address so it'll show up here too.</p>
</div>

  <!-- <div class="form-group">
    <label for='avatar_uri'>{t}Avatar address:{/t}
      <span><a href='#dfn_avatar_uri' rel='glossary'>{t}What's this?{/t}</a></span>
    </label>
    <input class="form-control" name='avatar_uri' id='avatar_uri' value='{$avatar_uri|escape:'html':'UTF-8'}' />
  </div> -->

  <div class="form-group"><p><label for='bio'>{t}Mini Biography:{/t}</label></p>
    <p><textarea cols="40" rows="5" style="font-family: monospace" class="form-control" name='bio' id='bio'>{$bio|escape:'html':'UTF-8'}</textarea></p>
  </div>

  <!-- <div class="checkbox">
    <label for='receive_emails'>
      <input type='checkbox' name='receive_emails' id='receive_emails' style='width: auto;' {if $receive_emails}checked{/if} />
      {t}Receive E-mails:{/t}
      <span><a href='#dfn_receive_emails' rel='glossary'>{t}What's this?{/t}</a></span>
    </label>
  </div> -->

    <!-- <div class="form-group">
      <label for='id'>{t}WebID (FOAF){/t}:
	<span><a href='#dfn_id' rel='glossary'>{t}What's this?{/t}</a></span>
      </label>
      <input class="form-control" name='id' id='id' value='{$id|escape:'html':'UTF-8'}' />
    </div> -->

    <div class="form-group">
      <p><label for='laconica_profile'>{t}Fediverse Profile:{/t}</label></p>
      <p><input class="form-control" size="40" maxlength="255" type="url" placeholder="https://example.com/@{$me->name}" name='laconica_profile' id='laconica_profile' value='{$laconica_profile|escape:'html':'UTF-8'}' />
    </p>

    <!-- <div class="form-group">
      <label for='journal_rss'>{t}RSS Feed:{/t}
	<span><a href='#dfn_journal_rss' rel='glossary'>{t}What's this?{/t}</a></span>
      </label>
      <input class="form-control" name='journal_rss' id='journal_rss' value='{$journal_rss|escape:'html':'UTF-8'}' />
    </div> -->


    <div class="form-group">
    <p><label for='password_1'>{t}Password:{/t}
      <span>{t}Leave this blank if you don't want to change your password.{/t}</span>
    </label></p>
    <p><input class="form-control" name='password_1' id='password_1' size="40" maxlength="40" type='password' autocomplete="off" value='' />
 </p>
</div>
<div class="form-group">
    <p><label for='password_2'>{t}Confirm Password:{/t}</label></p>
    <p><input class="form-control" name='password_2' id='password_2' size="40" maxlength="40" type='password' autocomplete="off" value='' /></p>
  </div>

  <p class="end-times-alert"><strong>Please note profile edits are still cached for approximately 1-2 mins, sorry about that.</strong></p>

<hr />

<details>
<summary>{t}Delete my account{/t}</summary>
<p class="checkbox">
      <label for='delete_account' style="color: red; font-weight: bold; border: 1px solid red; padding: 1em; ">Danger Zone: 
	<input type='checkbox' id='delete_account_broken' name='delete_account' style='width: auto;' />
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
