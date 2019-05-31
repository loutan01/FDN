const HtmlWebpackPlugin = require('html-webpack-plugin');

const VueLoaderPlugin = require('vue-loader/lib/plugin');

const path = require('path');

module.exports = {
  resolve: {
      alias: {
        vue: 'vue/dist/vue.js'
      }
    },
  entry: [
    './src/main.js',
  ],
  output: {
    publicPath: '/dist/',
    path: path.resolve(__dirname, 'dist'),
    filename: '[name].[hash].bundle.js',
  },
  module: {
    rules: [{
      test: /\.vue$/,
      loader: 'vue-loader',
    },{
    	test: /\.css/,
    	use: ['vue-style-loader', 'css-loader'] // BOTH are needed!
	 }],
  },
  plugins: [
    new HtmlWebpackPlugin({
      template: 'index.template.html',
    }),
    new VueLoaderPlugin(),
  ],
};
