<article class="{{ item.layout }}">
	{% if item.photos && item.photos.length %}
	{% include 'post/gallery.swig' %}
	{% endif %}
	<div class="post-content">
		<header>
			{% if item.layout != 'page' %}
				<div class="meta">
					<div class="icon"></div>
					<time datetime="{{ item.date.toDate().toISOString() }}"><a href="{{ url_for(item.path) }}">{{
						item.date.format(config.date_format) }}</a></time>
				</div>
			{% endif %}
			{% include 'post/title.swig' %}
		</header>
		<div class="entry">
			{% if item.excerpt && index %}
			{{ item.excerpt }}
			{% else %}
			{{ item.content }}
			{% endif %}
		</div>
		<footer class="clearfix">
			{% if index %}
				{% if item.excerpt %}
					<div class="read-more">
						<a href="{{ url_for(item.path) }}#more" class="more-link">{{ theme.excerpt_link }}</a>
					</div>
				{% endif %}
				{% if item.comments && theme.comment.enable && theme.comment.disqus_shortname %}
					<div class="disqus-comment">
						<a href="{{ item.permalink }}#disqus_thread" class="comment-link">{{ __('comment') }}</a>
					</div>
				{% endif %}
			{% endif %}
			{% include 'post/category.swig' %}
			{% include 'post/tag.swig' %}
		</footer>
	</div>
</article>