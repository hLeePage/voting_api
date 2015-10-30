# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Candidate.create(name: 'Elmo', hometown: 'Denver', district:'23', party: 'Communist')
Candidate.create(name: 'Bigbird', hometown: '4th ave', district:'8', party: 'non rep')
Voter.create(name: 'Citizen', party: 'Rep')
Candidate.create(name: 'JoJo', hometown: 'morristown', district: '9', party: 'Anarchist')
Voter.create(name: 'ben', party: 'Rep')

