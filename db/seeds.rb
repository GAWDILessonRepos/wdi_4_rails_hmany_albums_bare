# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Album.delete_all

nevermind = Album.create!(title: "Nevermind", genre: 'rock')
sea_change = Album.create!(title: "Sea Change", genre: 'jazz')

Song.delete_all
sea_change.songs.create!(title: 'golden age', artist: "beck", price: 1.99, duration: 215)
sea_change.songs.create!(title: 'lost Cause', artist: "beck", price: 4.99, duration: 182)
sea_change.songs.create!(title: 'lonesome Tears', artist: "beck", price: 2.99, duration: 156)

nevermind.songs.create!(title: 'lithium', artist: 'nirvana', duration: 193, price: 1.99)
nevermind.songs.create!(title: 'come as you are', artist: 'nirvana', duration: 177, price: 1.49)
