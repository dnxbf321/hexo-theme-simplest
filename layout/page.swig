{#
	分页
	/source/**.md 文章使用此模板
#}

{% extends 'ancestor.swig' %}

{% block primary %}

	{% set pipe = {item: page, unTitleLink: true} %}
	{% include '_partial/article.swig' with pipe %}

	{% include '_partial/disqus_count.swig' %}

{% endblock %}
