`import DS from 'ember-data'`

Expense = DS.Model.extend
  invoice:
    DS.belongsTo 'invoice'
  total:
    DS.attr 'number'
  refund:
    DS.attr 'number'
  description:
    DS.attr 'string'

`export default Expense`
