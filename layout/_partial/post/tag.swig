{% if item.tags && item.tags.length %}
<div class="tags">
	{% for tag in item.tags %}
	<a href="{{ url_for(tag.path ) }}">#{{ tag.name}}</a>
	{% endfor %}
</div>
{% endif %}