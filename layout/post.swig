{% extends 'ancestor.swig' %}

{% block primary %}

{% set pipe = {item: page, index: false} %}
{% include '_partial/article.swig' with pipe %}

{% include '_partial/disqus.swig' %}

{% endblock %}