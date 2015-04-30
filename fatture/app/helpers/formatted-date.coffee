`import Ember from 'ember'`

# This function receives the params `params, hash`
formattedDate = () ->

FormattedDateHelper = Ember.HTMLBars.makeBoundHelper (date, options) ->
  date = if date.length then date[0] else null
  if date?
    console.log date
    moment(date).format('MMMM Do YYYY')
  else date

`export { formattedDate }`

`export default FormattedDateHelper`
