`import Ember from 'ember'`

CompaniesListRoute = Ember.Route.extend
  model: ->
    @store.find('company')

`export default CompaniesListRoute`