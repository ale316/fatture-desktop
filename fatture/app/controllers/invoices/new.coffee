`import Ember from 'ember'`

InvoicesNewController = Ember.Controller.extend
  needs: ['companies']
  companies: Ember.computed.alias('controllers.companies.arrangedContent')
  refundAmount: 0
  totalAmount: 0

  actions:
    saveInvoice: ->
      @model.save().then (invoice) ->
        invoice.get('expenses').then (expenses) ->
          expenses.save()

    addExpense: ->
      @model.get('expenses').createRecord({})

  addToTotal: (->
    refundAmount = 0
    totalAmount = 0
    amount = @get('model.expenses').reduce (tot, expense) ->
      refund = parseInt(expense.get('refund') or 0)
      refundAmount += refund
      total = parseInt(expense.get('total') or 0)
      totalAmount += total
      total + refund + tot
    , 0
    @set('refundAmount', refundAmount)
    @set('totalAmount', totalAmount)
    @model.set('amount', amount)
  ).observes('model.expenses.@each.refund', 'model.expenses.@each.total')

  refunds: (->
    @get('refundAmount')
  ).property('refundAmount')

  totals: (->
    @get('totalAmount')
  ).property('totalAmount')

  

`export default InvoicesNewController`
