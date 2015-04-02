{% extends 'ancestor.swig' %}

{% block primary %}

{% set pipe = {pagination: config.category} %}
{% include '_partial/archive.swig' with pipe %}

{% endblock %}