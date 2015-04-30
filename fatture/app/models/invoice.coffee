`import DS from 'ember-data'`

Invoice = DS.Model.extend
  company:
    DS.belongsTo 'company'
  amount:
    DS.attr 'number'
  paidAt:
    DS.attr 'date'
  # paid:
  #   DS.attr 'boolean', defaultValue: false
  expenses:
    DS.hasMany 'expense', async: true
  noticeCreatedAt:
    DS.attr 'date', defaultValue: new Date()

  # setPaidDate: (->
  #   if @get('paid')?
  #     @set('paidAt', new Date())
  # ).observes('paid')

  paid: (->
    @get('paidAt')?
  ).property('paidAt')

`export default Invoice`
