{% if page.prev %}
	<a href="{{ page.prev.permalink }}" id="postPrev" class="icon fa fa-chevron-left"></a>
{% endif %}
{% if page.next %}
	<a href="{{ page.next.permalink }}" id="postNext" class="icon fa fa-chevron-right"></a>
{% endif %}