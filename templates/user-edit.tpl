{include file='header.tpl' subheader='user-header.tpl' showbio=true}

<p style="background-color: yellow; font-size: 18px;"><strong>Got Last.fm? Connect your account here and scrobble to both services!</strong></p>

<p><a style="font-weight: bold" class="btn btn-primary btn-lg" href='{$base_url}/user-connections.php'>Connections to other services</a></p>

<hr />

<h2>Edit your profile</h2>

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

  <p>
    <label for='fullname'>{t}Full name:{/t}</label>
    <input type="text: class="form-control" name='fullname' id='fullname' value='{$fullname|escape:'html':'UTF-8'}' />
    <p class="help-block">{t}Enter your name here, if you want to.{/t}</p>
 </p><p>
    <label for='location'>{t}Location:{/t}</label>
    <input class="form-control" name='location' id='location' value='{$location|escape:'html':'UTF-8'}' />
    <p class="help-block">{t}Where do you live?{/t}</p>
 </p><p>
    <label for='homepage'>{t}Website address:{/t}</label>
    <input type="url" class="form-control" placeholder="https://example.com/" name='homepage' id='homepage' value='{$homepage|escape:'html':'UTF-8'}' />
  </div>

  <p style="background-color: yellow; font-size: 18px;"><strong>Shows up on your profile once you start listening to music</strong></p>

  <!-- <div class="form-group">
    <label for='avatar_uri'>{t}Avatar address:{/t}
      <span><a href='#dfn_avatar_uri' rel='glossary'>{t}What's this?{/t}</a></span>
    </label>
    <input class="form-control" name='avatar_uri' id='avatar_uri' value='{$avatar_uri|escape:'html':'UTF-8'}' />
  </div> -->

  <p>
    <label for='bio'>{t}Mini Biography:{/t}</label>
    <textarea class="form-control" name='bio' id='bio'>{$bio|escape:'html':'UTF-8'}</textarea>
  </p>

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

    <p>
      <label for='laconica_profile'>{t}Fediverse Profile:{/t}
	<span><a href='#dfn_laconica_profile' rel='glossary'>{t}What's this?{/t}</a></span>
      </label>
      <input class="form-control" type="url" placeholder="https://example.com/@example" name='laconica_profile' id='laconica_profile' value='{$laconica_profile|escape:'html':'UTF-8'}' />
    </p>

    <!-- <div class="form-group">
      <label for='journal_rss'>{t}RSS Feed:{/t}
	<span><a href='#dfn_journal_rss' rel='glossary'>{t}What's this?{/t}</a></span>
      </label>
      <input class="form-control" name='journal_rss' id='journal_rss' value='{$journal_rss|escape:'html':'UTF-8'}' />
    </div> -->


    <p>
    <label for='password_1'>{t}Password:{/t}
      <span>{t}Leave this blank if you don't want to change your password.{/t}</span>
    </label>
    <input class="form-control" name='password_1' id='password_1' type='password' autocomplete="off" value='' />
 </p><p>
    <label for='password_2'>{t}Confirm Password:{/t}
    </label>
    <input class="form-control" name='password_2' id='password_2' type='password' autocomplete="off" value='' />
  </p>

  <p style="background-color: yellow; font-size: 18px;"><strong>Please note profile edits are still cached for approximately 20-30 mins, sorry about that.</strong></p>

<hr />

<p class="checkbox">
      <label for='delete_account' style="color: red; font-weight: bold; border: 1px solid red; padding: 1em; ">Danger Zone: 
	<input type='checkbox' id='delete_account' name='delete_account' style='width: auto;' />
	{t}Delete my account{/t}
      </label>
   </p>

  <p>
    <button class="btn btn-primary btn-block" type='submit' value='{t}Change{/t}'>{t}Change{/t}</button>
    <input name='submit' value='1' type='hidden' />
  </p>

</form>

<h3>{t}Help{/t}</h3>
  <!-- <dt id='dfn_location_uri'>{t}Location check{/t}</dt>
  <dd>{t escape=no}This feature looks up your location on <a href='http://www.geonames.org'>geonames</a>. You don't need to do it, but it will allow us find your latitude and longitude so we can add some great location-based features in the future.{/t}</dd> -->

  <h4 id='dfn_avatar_uri'>{t}Avatar address{/t}</h4>
  <p>{t site=$site_name escape=no}The web address for a picture to represent you on %1. It should not be more than 80x80 pixels. (64x64 is best.) If you leave this empty, we'll use <a href='http://libravatar.org'>Libravatar.org</a> to find an image for you.{/t}</p>

  <!-- <dt id='dfn_id'>WebID (FOAF)</dt>
  <dd>{t escape=no}An address that represents you in RDF. See <a href='http://esw.w3.org/topic/WebID'>WebID</a> for details. If you don't know what this is, it's best to leave it blank.{/t}</dd> -->

  <h4 id='dfn_laconica_profile'>Fediverse Profile</h4>
  <p>{t escape=no}The URL for your profile on the social web on an ActivityPub-powered site such as <a href='http://social.lol/' target='_blank'>social.lol</a>.{/t}</p>

  <!-- <dt id='dfn_journal_rss'>RSS Feed</dt>
  <dd>{t site=$site_name escape=no}An RSS feed which will be used to populate your journal on %1. Defaults to your StatusNet RSS feed if you provide your StatusNet micro-blog address.{/t}</dd> -->

  <!-- <dt id='dfn_receive_emails'>Receive E-mails</dt>
  <dd>{t escape=no}From time to time we send out e-mails about all the cool new stuff we're getting up to. If you'd rather not hear about these things then simply untick this box.{/t}</dd> -->
</dl>



{include file='footer.tpl'}
