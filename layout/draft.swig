{#
	草稿
	/source/_drafts/**.md 使用此模板
#}

{% extends 'ancestor.swig' %}

{% block primary %}

	{% set pipe = {item: page, unTitleLink: true} %}
	{% include '_partial/article.swig' with pipe %}

	{% include '_partial/disqus.swig' %}

{% endblock %}