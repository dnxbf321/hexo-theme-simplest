<nav id="pagination">
	{% if page.prev %}
	<a href="{{ url_for(page.prev_link) }}" class="prev">{{ __('prev') }}</a>
	{% endif %}
	{% if page.next %}
	<a href="{{ url_for(page.next_link) }}" class="next">{{ __('next') }}</a>
	{% endif %}
</nav>