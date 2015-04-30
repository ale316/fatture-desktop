`import DS from 'ember-data'`

Company = DS.Model.extend {
  name:
    DS.attr 'string'
  identifier:
    DS.attr 'string'
  owner:
    DS.attr 'string'
  ssn:
    DS.attr 'string'
  vat:
    DS.attr 'string'
  
  address:
    DS.attr 'string'
  postalCode:
    DS.attr 'string'
  city:
    DS.attr 'string'
  region:
    DS.attr 'string'

  invoices:
    DS.hasMany 'invoice', async: true
  createdAt:
    DS.attr 'date', defaultValue: new Date()
}

`export default Company`
