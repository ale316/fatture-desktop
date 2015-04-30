`import Ember from 'ember'`

InvoicesNewRoute = Ember.Route.extend
  model: ->
    invoice = @store.createRecord 'invoice'
    invoice.get('expenses').createRecord({})
    invoice

`export default InvoicesNewRoute`
