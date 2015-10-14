path = require 'path'

module.exports  =

  entry: './src/entry'

  output:
    path: path.resolve './build'
    filename: 'script.js'
    publicPath: '/build'

  module:
    loaders: [
      { test: /\.coffee$/,loader: 'coffee' }
      { test: /\.vue$/, loader: 'vue-loader' }
      { test: /\.css$/, loader: 'style!css!autoprefixer' }
      { test: /\.less/, loader: 'style!css!autoprefixer!less' }
      { test: /\.(png|jpg|gif)$/, loader: 'url-loader' }
      { test: /\.(html|tpl)$/, loader: 'html-loader' }
    ]

  resolve:
    extensions: ['', '.coffee', '.js']
    alias:
      filters: path.join __dirname, './src/filters'
      components: path.join __dirname, './src/components'
      vendors: path.join __dirname, './src/vendors/'


  #externals:
  #  vue: 'Vue'
  #  router: 'VueRouter'
  #  resource: 'VueResource'


  devtool: '#source-map'
