<nav id="pagination">
	{% if page.prev %}
		<a href="{{ url_for(page.prev_link) }}" class="prev"><i class="fa fa-chevron-left"></i> {{ __('prev') }}</a>
	{% endif %}
	{% if page.next %}
		<a href="{{ url_for(page.next_link) }}" class="next">{{ __('next') }} <i class="fa fa-chevron-right"></i></a>
	{% endif %}
</nav>