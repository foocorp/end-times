{include file='header.tpl'}

<h2 property="dc:title">{t}Remove your profile{/t}</h2>

<div class="alert alert-info">
  <p>
    <strong>Confirmation mail</strong> has been sent to email on file for <strong>{$this_user->name}</strong>.
  </p>
  <p>You can find this <a href="/user-edit.php#email">on your profile</a>.</p>
</div>

{include file='footer.tpl'}
