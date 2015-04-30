`import Ember from 'ember'`

ApplicationRoute = Ember.Route.extend
  renderTemplate: ->
    @render()
    @render 'companies.list',
      into: 'application'
      outlet: 'sidebar'
      controller: 'companies'

  setupController: ->
    @controllerFor('companies').set('model', @store.find('company'))

`export default ApplicationRoute`
