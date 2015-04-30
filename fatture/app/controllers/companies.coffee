`import Ember from 'ember'`

CompaniesController = Ember.ArrayController.extend
  sortProperties: ['name']
  sortAscending: true        

`export default CompaniesController`
