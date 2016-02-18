'use strict';

var sass = require('node-sass');
var path = require('path');

hexo.extend.renderer.register('scss', 'css', function(data, options) {
	//将 scss 转换成 css
  var result = sass.renderSync({
    data: data.text,
    includePaths: [path.join(__dirname, '../source/css'), path.join(__dirname, '../source/css/base'), path.join(__dirname, '../source/bower_components/font-awesome/scss')],
    outputStyle: 'compressed',
    sourceMap: true
  });

  return result.css.toString();

}, true);