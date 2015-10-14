## routers

module.exports = ConfigureRouter = (router) ->

  router.map {
    '*':
      name: '404'
      component:
        template: '404 not found'

    '/':
      name: 'home'
      component: require './components/home/home'

  }
