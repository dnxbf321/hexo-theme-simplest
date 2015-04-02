{% if theme.comment.enable && theme.comment.disqus_shortname %}
<section id="comment">
	<div id="disqus_thread"></div>
</section>
<script>
	(function (disqus_shortname) {
		window.addEventListener('DOMContentLoaded', function () {
			var dsq = document.createElement('script');
			dsq.type = 'text/javascript';
			dsq.async = true;
			dsq.src = '//' + disqus_shortname + '.disqus.com/embed.js';
			document.getElementsByTagName('head')[0].appendChild(dsq);
		}, false);
	}('{{ theme.comment.disqus_shortname }}'));
</script>
{% endif %}