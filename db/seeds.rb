# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
flat1 = Flat.create(address: "Pluto Hill n.9, Pluto", description: "Great for people searching for a quiet place.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam hendrerit nisi sed sollicitudin pellentesque. Nunc posuere purus rhoncus pulvinar aliquam. Ut aliquet tristique nisl vitae volutpat. Nulla aliquet porttitor venenatis. Donec a dui et dui fringilla consectetur id nec massa. Aliqu")
# flat2 = Flat.create(address: "Sun aveunue 1, Sun", description: "If you like a warm place .Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam hendrerit nisi sed sollicitudin pellentesque. Nunc posuere purus rhoncus pulvinar aliquam. Ut aliquet tristique nisl vitae volutpat. Nulla aliquet porttitor venenatis. Donec a dui et dui fringilla consectetur id nec massa. Aliqu")

file = URI.open('https://loveincorporated.blob.core.windows.net/contentimages/gallery/7402eabd-e39f-4ea6-923f-24a975b54459-ice-house.jpg')
flat1.photos.attach(io: file, filename: '7402eabd-e39f-4ea6-923f-24a975b54459-ice-house.jpg', content_type: 'image/jpg')
flat1.save
