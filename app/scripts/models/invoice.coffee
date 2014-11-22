Fatture.Invoice = DS.Model.extend
  company:
    DS.belongsTo 'company'
  paidAt:
    DS.attr 'date'
  paid:
    DS.attr 'boolean'
  noticeCreatedAt:
    DS.attr 'date', defaultValue: new Date()

  rev: 
    DS.attr 'string'