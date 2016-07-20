# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

tourneyA = Tournament.create!(name: "Pokemon Catching Championship")
tourneyB = Tournament.create!(name: "Smoke Out")
tourneyC = Tournament.create!(name: "Catch the Flag")
playerA = Player.create!(name: "Izzy Ironside")
playerB = Player.create!(name: "Alison Maultasch")
playerC = Player.create!(name: "Jason Sandler")
playerD = Player.create!(name: "Danielle Villi")


tourneyA.players.push( playerA )
tourneyA.players.push( playerB )

tourneyB.players.push( playerC )
tourneyB.players.push( playerD )

tourneyC.players.push(playerB)
tourneyC.players.push(playerD)
