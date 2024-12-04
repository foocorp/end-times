{include file='header.tpl' subheader='user-header.tpl' showbio=true}

{if !empty($topartists)}
	<h2>{t name=$me->name}%1{/t} top artists for 2024</h2>
	<ul>
		{section name=i loop=$topartists}
			<li>{$topartists[i].name}</li>
		{/section}
	</ul>
{/if}


{include file='footer.tpl'}
