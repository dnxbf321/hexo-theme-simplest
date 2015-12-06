'use strict';

var autoprefixer = require('autoprefixer');
var postcss = require('postcss-js');

hexo.extend.filter.register('after_render:css', function(css, data) {

  if (data.path.indexOf('bower_components') === -1) {

    var prefixer = postcss.sync([
      autoprefixer({
        browsers: ['> 5%', 'last 3 versions', 'Firefox ESR', 'iOS >= 6', 'Android >= 4.0', 'ExplorerMobile >= 10']
      })
    ]);
    var result = prefixer(css);

    return result.css;

  } else {

    return css;

  }

});