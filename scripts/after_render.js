'use strict';

var autoprefixer = require('autoprefixer');
var postcss = require('postcss');
var postcssJs = require('postcss-js');
var uglifyJs = require('uglify-js');

hexo.extend.filter.register('after_render:css', function(css, data) {
  css = postcss.parse(css);
  css = postcssJs.objectify(css);

  var cssFlow = postcssJs.sync([
    autoprefixer({
      browsers: ['> 5%', 'last 3 versions', 'Firefox ESR', 'iOS >= 6', 'Android >= 4.0', 'ExplorerMobile >= 10']
    })
  ]);

  var result = cssFlow(css);

  return result.css;

});

hexo.extend.filter.register('after_render:js', function(js, data) {
  if (!/(min\.js|bower_components)+/i.test(data.path)) {
    var result = uglifyJs.minify(js, {
      fromString: true
    });
    js = result.code;
  }
  return js;
});