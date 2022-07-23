# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
require 'faker'
description = ["The island is perfect for solitude, nature lovers, and the sea. You'll have access to an entire island of 2 acres. The closest neighbor is on a neighboring island. At its best, the island is perfect for retreating retreat, with couples' romantic quality games, or a childrens sunset getaway. A private island is rarely available for rent. Two cottages, beds for 4 + 2 people + on mattress, in a play house, a tent, or for an additional fee of 3-4 people on a boat. Transportation 15e/person/direction or rental boat 65e/day. Food/tour and program services included.",
"Head north in in space and experience our tiny-hotel on a remote island. The Arctic Hideaway is an architecturally playful and stunning collection of 11 individual buildings, where fours are sleeping cabins. The shared areas are the iconic Tower House, kitchen house, studio building, bathhouse, crab trap and sauna. In limited periods, we will offer single cabins for rent on Airbnb. Included in the stay is all food (se details for concept) and daily use of the sauna.",
"A unique opportunity to live in an island all to yourself with family or friends.
Perfect for recollection, nature exploration and mingle.

This place has an amazing outdoor experience. Being equipped with sauna, Tv and other necessities such as stove and oven, refrigarator/freezer, heater during cold weather and AC for hot days etc.

Boat, canoe and SUP are included so that you can explore the lovely surrounding areas.

Located accessibly just 5 minutes to row to the mainland and carparking.
", "Vakthusøyen is an island, about 150 meters from Henningsvær, where you use a small motorboat for access.
Vakthusøya is an island, about 150 meters from Henningsvær! We provide a small boat with engine for access.

Nybryggen is the place if you like an authentic place on an island, very quiet and at the same time a few minutes rottur from the famous fishing community Henningsvær.

The apartment is located in an original rudder bridge, has views and is an excellent starting point for all activities in the area.",
"Ravna Sika, an island with an area of 10,000 m2, situated in the Kornati Islands between the islands of Sit and Yellow. In the middle of the island is an 80m2 house with two bedrooms, kitchen, bathroom, living room. Every window in the house offers a beautiful view of the sea. Transportation is organized by the owner by speedboat (ride takes about 45 min. -150€) or fishing boat (about 2.5 hours-100€), price in one direction. Departure from Murter where parking is provided for guests. Pets supplement 15 €/day.",
"Welcome you adventurers, nature lovers, and island lovers!
Living on a lonely island like Robinson Crusoe,
enjoying the midnight sun, being enchanted by silence and beautiful nature?
Majorsgrund is your chance to make this dream come true.
Our picturesque private island is located in one of the most exciting regions of Finland.

Up to ten guests at the same time can join your island adventure and spend an unforgettable time in the happiest country in the world.",
"A private paddle-in retreat. You must have your own kayak/canoe. You’ll cook on a wood stove, and enjoy views of the ocean from your dining room table. You’ll explore the beautiful forested island and other islands all around you. You’ll find remnants of old Acadian homesteads, and you can picture the time when this island was home to several fishermen’s shanties. Nature is all around you. Great blue herons in the summertime, sometimes a seal. You can see the fishing wharf from the patio door.",
"A warm welcome to my charming archipelago dream on the private island Röndeskär 5 minutes from the mainland. The main cottage is equipped with kitchen, bedroom and cozy living room with comfortable sofa beds. In the guest house there is room for 3 guests. Toilet room is a separate outhouse with shower and water-flushing toilet. Separate sauna for 4 people. There are many outdoor areas to hang out on - sunbeds, sun decks, terrace for morning coffee, jetty for those who want to swim, or just sit on the rocks and read a book or fish.",
"Nestled at the bottom of the lighthouse tower, The Hide is surrounded by the dunes of the nature reserve, bounded by the sea. The nature reserve is windswept and rugged, home to a wonderful diversity of bird species making The Hide popular with bird-watchers and wildlife enthusiasts. Grey seals can also be spotted swimming in the sea at high tide! The sunrises and sunsets are simply stunning.",
"The house has Three bedrooms, one with double-bed, one with bunk bed and one with a single bed. there is a fully equipped kitchen, a sofa-bed in the living room and two bathrooms with a shower. The house has also a patio with an amazing sea view , garden and parking. It can accommodate up to 6 people.",
]

images = ["https://i2-prod.mirror.co.uk/incoming/article9116356.ece/ALTERNATES/s1200b/GettyImages-145091712.jpg",
"https://wp-assets.futurism.com/2020/06/Architectural-Concept-Martian-City-Breathtaking.jpg",
"https://assets.newatlas.com/dims4/default/067e279/2147483647/strip/true/crop/3333x2225+0+0/resize/1438x960!/quality/90/?url=http%3A%2F%2Fnewatlas-brightspot.s3.amazonaws.com%2Farchive%2Fmartian-architecture-2.jpg",
"https://www.bristol.ac.uk/media-library/sites/news/2022/july/Martian%20house%20on%20Mars%20%C2%A9%20PEARCE%20%20and%20Hugh%20Broughton%20Architects%20-%20article.jpg",
"https://www.yankodesign.com/images/design_news/2020/08/space-homes/08-Interstellar-Labs_EBIOS_Mars2.jpg",
"https://www.esa.int/var/esa/storage/images/esa_multimedia/images/2004/08/esa_s_spacehouse/9250388-5-eng-GB/ESA_s_SpaceHouse.jpg",
"https://www.siliconrepublic.com/wp-content/uploads/2015/05/nasa-space-base-718x523.jpg",
"https://makerfaire.com/wp-content/uploads/gravity_forms/226-df8c7ea7af48f7c40040fa0ec60d2726/2019/03/SpaceXArch_Final.jpg",
"https://www.porcelanosa.com/trendbook/app/uploads/2021/06/Future-houses-featured-image.jpg",
"https://static.messynessychic.com/wp-content/uploads/2018/09/earthbag-600x400.jpeg"]
# flat1 = Flat.create(address: "Pluto Hill n.9, Pluto", description: "Great for people searching for a quiet place.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam hendrerit nisi sed sollicitudin pellentesque. Nunc posuere purus rhoncus pulvinar aliquam. Ut aliquet tristique nisl vitae volutpat. Nulla aliquet porttitor venenatis. Donec a dui et dui fringilla consectetur id nec massa. Aliqu",
# )
# # flat2 = Flat.create(address: "Sun aveunue 1, Sun", description: "If you like a warm place .Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam hendrerit nisi sed sollicitudin pellentesque. Nunc posuere purus rhoncus pulvinar aliquam. Ut aliquet tristique nisl vitae volutpat. Nulla aliquet porttitor venenatis. Donec a dui et dui fringilla consectetur id nec massa. Aliqu")

# file = URI.open('https://images.unsplash.com/photo-1558036117-15d82a90b9b1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80')
# flat1.photos.attach(io: file, filename: 'image1.jpg', content_type: 'image/jpg')
# flat1.save
counter = 0
Flat.destroy_all
User.destroy_all
user1 = User.create(email: 'test@test.com', password: '123456')
10.times do
  puts counter
  flat = Flat.create(address: "#{Faker::Movies::StarWars.droid} #{Faker::Movies::StarWars.planet}",
   description: description[counter], user: user1)
  file = URI.open(images[counter])
  flat.photos.attach(io: file, filename: "image#{counter+1}.jpg", content_type: 'image/jpg')
  flat.save!
  counter += 1
end
