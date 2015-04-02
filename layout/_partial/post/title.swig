{% if item.link %}
{% if item.title %}
<h1 class="title"><a href="{{ url_for(item.link) }}" target="_blank">{{ item.title }}</a></h1>
{% else %}
<h1 class="title"><a href="{{ url_for(item.link) }}" target="_blank">{{ item.link }}</a></h1>
{% endif %}
{% else %}
{% if index %}
<h1 class="title"><a href="{{ url_for(item.path) }}">{{ item.title }}</a></h1>
{% else %}
<h1 class="title">{{ item.title }}</h1>
{% endif %}
{% endif %}