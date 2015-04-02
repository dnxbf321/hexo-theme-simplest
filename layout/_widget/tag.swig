{% if site.tags.length %}
<div class="widget tag">
	<h2 class="archive-title">{{ __('tag') }}</h2>
	<ul class="entry">
		{% for tag in site.tags.sort('name') %}
		<li><a href="{{ url_for(tag.path) }}">#{{ tag.name }}</a>
			<small>{{ tag.posts.length }}</small>
		</li>
		{% endfor %}
	</ul>
</div>
{% endif %}