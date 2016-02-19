(function() {
  var $titles = $('.post-content .title[data-role=articleTitle]');

  var curText;
  var $fix = $('#fixTitle');
  function fixTitle(text) {
    if (curText !== text) {
      curText = text;
      if (!$fix.length) {
        $fix = $('<div id="fixTitle"><div class="center"><h1 class="title"></h1></div></div>');
        $('body').append($fix);
      }
      $fix.show()
        .find('.title').text(text);
    }
  }

  function removeFixTitle() {
    $fix.hide();
    curText = null;
  }

  $(window).on('scroll', function() {
    for (var i = $titles.length - 1; i >= 0; i--) {
      var titleEl = $titles[i];
      var rect = titleEl.getBoundingClientRect();
      if (rect.top < 100) {
        var text = $(titleEl).text();
        fixTitle(text);
        break;
      } else if (i === 0) {
        removeFixTitle();
      }
    }
  });
}());