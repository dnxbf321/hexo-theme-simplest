{% extends 'ancestor.swig' %}

{% block primary %}
{% for post in page.posts %}
{% set pipe = {item: post, index: true} %}
{% include '_partial/article.swig' with pipe %}
{% endfor %}

{% include '_partial/pagination.swig' %}

{% include '_partial/disqus_count.swig' %}

{% endblock %}