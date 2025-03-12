{include file='header.tpl'}

<h2>{$tag|escape:'htmlall':'UTF-8'|capitalize}</h2>

<ul class="tagcloud">
{section name=i loop=$tagcloud}
        <li><a href='{$tagcloud[i].pageurl}' rel='tag'>{$tagcloud[i].name} ({$tagcloud[i].count})</a></li>
{/section}
</ul>

{include file='footer.tpl'}
