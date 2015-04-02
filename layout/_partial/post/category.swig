{% if item.categories && item.categories.length %}
<div class="categories">
	{% for category in item.categories %}
	<a href="{{ url_for(category.path ) }}">{{ category.name}}</a>
	{% endfor %}
</div>
{% endif %}