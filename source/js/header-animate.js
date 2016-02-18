(function() {
  if (document.documentElement.clientWidth > 500) {
    var $header = $('#header');
    $(window).on('scroll', function() {
      var y = window.scrollY || window.pageYOffset;
      if (y > 40) {
        $header.addClass('small');
      } else {
        $header.removeClass('small');
      }
    });
  }
}());