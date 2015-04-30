`import Ember from 'ember'`

CompaniesNewController = Ember.Controller.extend
  actions:
    saveCompany: ->
      @model.save().then (company) =>
        @transitionToRoute('company', company)

`export default CompaniesNewController`