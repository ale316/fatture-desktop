`import DS from 'ember-data'`

ApplicationAdapter = DS.RESTAdapter.extend
  coalesceFindRequests: true    # these blueprints support coalescing (reduces the amount of requests)
  namespace: 'api/v1'           # same as API prefix in Sails config
  host: 'http://localhost:1337' # Sails server

`export default ApplicationAdapter`
