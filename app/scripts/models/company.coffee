Fatture.Company = DS.Model.extend
  name:
    DS.attr 'string'
  invoices:
    DS.hasMany 'invoice'
  createdAt:
    DS.attr 'date', defaultValue: new Date()

  rev: 
    DS.attr 'string'