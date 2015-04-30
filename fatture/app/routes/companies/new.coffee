`import Ember from 'ember'`

CompaniesNewRoute = Ember.Route.extend
  actions:
    willTransition: ->
      current_company = @modelFor('companies.new')
      if current_company.get('isDirty')
        current_company.destroyRecord()
      
  
  model: ->
    @store.createRecord('company')

`export default CompaniesNewRoute`