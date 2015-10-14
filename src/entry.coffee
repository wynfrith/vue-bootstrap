## core
Vue = require 'vue'
VueRouter = require 'vue-router'
VueResource = require 'vue-resource'
App = new Vue()

## config
Vue.config.debug = true  # debug mode
Vue.use VueRouter
Vue.use VueResource

## filter
require './filters/omit'
require './filters/dataFormat'

# router
router = new VueRouter {
    # history: true,  # the server needs to be properly configured
    #s aveScrollPosition: true
  }

ConfigureRouter = require './router'
ConfigureRouter router

window.router = router # router debug..

## bootstrap
router.start App, '#app'
