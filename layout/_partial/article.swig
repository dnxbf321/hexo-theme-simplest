<article class="{{ item.layout }}">
	<div class="post-content">
		<header>
			{% if item.layout != 'page' %}
				<div class="meta">
					<div class="icon">
						{% if item.layout === 'photo' %}
							<i class="fa fa-photo"></i>
						{% elseif item.layout === 'link' %}
							<i class="fa fa-link"></i>
						{% else %}
							<i class="fa fa-file"></i>
						{% endif %}
					</div>
					<time datetime="{{ item.date.toDate().toISOString() }}">{{ item.date.format(config.date_format) }}</time>
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
						<a href="{{ url_for(item.path) }}#more" class="more-link"><i class="fa fa-ellipsis-h"></i>{{ theme.excerpt_link }}</a>
					</div>
				{% endif %}
				{% if item.comments && theme.comment.enable && theme.comment.disqus_shortname %}
					<div class="disqus-comment">
						<i class="fa fa-comment"></i><a href="{{ item.permalink }}#disqus_thread" class="comment-link"> {{ __('comment') }}</a>
					</div>
				{% endif %}
			{% endif %}
			{% include 'post/category.swig' %}
			{% include 'post/tag.swig' %}
		</footer>
	</div>
</article>