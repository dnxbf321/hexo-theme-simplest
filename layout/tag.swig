{% extends 'ancestor.swig' %}

{% block primary %}

{% set pipe = {pagination: config.tag} %}
{% include '_partial/archive.swig' with pipe %}

{% endblock %}