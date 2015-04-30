`import Ember from 'ember'`

InvoicesIndexController = Ember.ArrayController.extend
  needs: ['company']

  company: (->
    @get('controllers.company').get('model')
  ).property('controllers.company.model')

`export default InvoicesIndexController`
