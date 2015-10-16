styles = require './home.less'

console.log styles

module.exports =
  template: require './home.tpl'
  data: () ->
    scoped: styles.scoped
    author: 'wynfrith'
    title: 'Vue-Bootstrap Demo'
