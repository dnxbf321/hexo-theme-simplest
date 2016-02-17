<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">
	<meta name="description" content="{{ config.description }}">

	{% block stylesheet %}
	{% if theme.fancybox %}
	<link rel="stylesheet" href="/fancybox/jquery.fancybox.css">
	{% endif %}
	<link rel="stylesheet" href="/css/normalize.css"/>
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
		{% block extends %}{% endblock %}
	</div>
</div>

{% include '_partial/footer.swig' %}

{% block scripts %}
<script src="/js/jquery.min.js"></script>
{% endblock %}

<script>
	/* #header特效 */
	(function() {
		var $header = $('#header');
		$(window).on('scroll', function() {
			if (window.scrollY > 100) {
				$header.addClass('small');
			} else {
				$header.removeClass('small');
			}
		});
	}());
</script>

{% if theme.fancybox %}
<script src="/fancybox/jquery.fancybox.pack.js"></script>
<script>
	(function ($) {
		$('.fancybox').fancybox();
	})(jQuery);
</script>
{% endif %}

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