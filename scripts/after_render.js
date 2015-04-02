var CleanCSS = require('clean-css'),
	autoprefixer = require('autoprefixer-core');

var opts = {
	autoprefixer: {
		safe: true,
		browsers: ['> 5%', 'last 3 versions', 'Firefox ESR', 'iOS >= 6', 'Android >= 4.0', 'ExplorerMobile >= 10']
	},
	cleanCss: {
		advanced: false,
		keepSpecialComments: 0,
		processImport: false,
		rebase: false
	}
};

function minifyCss(source) {
	var ret = '';
	ret = autoprefixer.process(source, opts.autoprefixer).css;
	ret = new CleanCSS(opts.cleanCss).minify(ret).styles;

	return ret;
}

hexo.extend.filter.register('after_render:css', function (str, data) {
	if (data.path.indexOf('bower_components') === -1) {
		return minifyCss(str);
	} else {
		return str;
	}
});