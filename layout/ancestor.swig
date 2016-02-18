{# root 模板 #}

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8"/>
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="renderer" content="webkit">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">
	<meta name="description" content="{{ config.description }}">

	{% block stylesheet %}
		{% if theme.fancybox %}
			<link rel="stylesheet" href="/bower_components/fancybox/source/jquery.fancybox.css">
		{% endif %}
		<link rel="stylesheet" href="/bower_components/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="/css/style.css">
	{% endblock %}

	<title>{% block title %}{{ config.title }} - {{ config.subtitle }}{% endblock %}</title>
</head>
<body>
{% include '_partial/header.swig' %}

<div id="content">
	<div class="center">
		<div class="main-col">
			{% block primary %}{% endblock %}
		</div>
		{% block extendElement %}{% endblock %}
	</div>
</div>

{% include '_partial/footer.swig' %}

<script src="/bower_components/jquery/dist/jquery.min.js"></script>
<script src="/js/header-animate.js"></script>

{% if theme.fancybox %}
	<script src="/bower_components/fancybox/source/jquery.fancybox.pack.js"></script>
	<script>
		(function ($) {
			$('.fancybox').fancybox();
		})(jQuery);
	</script>
{% endif %}

{% block scripts %}{% endblock %}

{% if theme.google_analytics %}
	<script>
		(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
			(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
			m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
		})(window,document,'script','//www.google-analytics.com/analytics.js','ga');

		ga('create', '{{ theme.google_analytics }}', 'auto');
		ga('send', 'pageview');
	</script>
{% endif %}

</body>
</html>