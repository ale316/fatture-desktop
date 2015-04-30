`import Ember from 'ember'`

InvoicesRoute = Ember.Route.extend
  model: ->
    @store.find('invoice')

`export default InvoicesRoute`
