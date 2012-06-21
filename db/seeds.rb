# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

alert_methods = AlertMethod.create([
  {label: 'Text Message'}, 
  {label: 'Email'}, 
  {label: 'SMS'}, 
  {label: 'V-Mail'}]
)
audiences = Audience.create([
  {label: 'Student'}, 
  {label: 'Faculty'}, 
  {label: 'Staff'}, 
  {label: 'First Responder'}]
)
sendbacks = Sendback.create([
  {label: 'Location'}, 
  {label: 'Migration'}, 
  {label: 'Disability'}, 
  {label: 'Bio-Sit'}]
)
