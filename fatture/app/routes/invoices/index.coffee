`import Ember from 'ember'`

InvoicesIndexRoute = Ember.Route.extend
  model: ->
    @modelFor('company').get('invoices')

`export default InvoicesIndexRoute`
