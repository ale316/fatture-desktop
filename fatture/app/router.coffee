` import Ember from 'ember' `
` import config from './config/environment' `

Router = Ember.Router.extend
  location: config.locationType

Router.map ->
  @resource 'companies', ->
    @route 'new'
  @resource 'company', path: '/companies/:company_id', ->
    @route 'edit'
  @resource 'invoices', ->
    @route 'new'
  @resource 'invoice', path: '/invoices/:invoice_id', ->
    @route 'edit'


` export default Router `