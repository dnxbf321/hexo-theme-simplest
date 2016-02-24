{% if page.archive %}
	{% include '../_widget/search.swig' %}
	{% include '../_widget/category.swig' %}
	{% include '../_widget/tag.swig' %}
{% endif%}

<div class="archive">
	{% if page.category %}
		<h2 class="archive-title category"><i class="fa fa-folder"></i> {{ page.category }}</h2>
	{% elseif page.tag %}
		<h2 class="archive-title tag"><i class="fa fa-tags"></i> #{{ page.tag }}</h2>
	{% else %}
		<h2 class="archive-title"><i class="fa fa-archive"></i> {{ __('archive') }}</h2>
	{% endif %}

	{% for item in page.posts %}
		<article class="{{ item.layout }}">
			<div class="post-content">
				<header>
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
					{% include 'post/title.swig' %}
				</header>
			</div>
		</article>
	{% endfor %}

	{% include 'pagination.swig' %}
</div>
