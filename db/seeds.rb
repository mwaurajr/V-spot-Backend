# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)




Manager.destroy_all
Client.destroy_all
Review.destroy_all
Admin.destroy_all

puts "start seeding"

puts "Seeding Admin......"
Admin.create([
    {
        name: "Frankline chebukati",
        username: "frank",
        email: "frank@venuspot.admin",
        password: "Frank@345"
    }
])

puts "Done Seeding Admin"

puts "Seeding managers........"
Manager.create([
     {
         name: "Williams Emmanuel",
         username: "willy@28",
         age: 30,
         address: "Robert Robertson, 1234 NW Bobcat Lane",
         phoneNumber: "+254790940364",
         email: "williamsemmauel@gmail.com",
         password: "Willy234",
         venue_id: 2
     },

     {
         name: "Atemba Mutua",
         username: "Atemba",
         age: 26,
         address: "P.O. Box 69, Mombasa",
         phoneNumber: "+254729604873",
         email: "atembamutua@gmail.com",
         password: "Atemba1998",
         venue_id: 1
     },

      {
         name: "Atieno Purity",
         username: "Atis",
         age: 24,
         address: "P.O. Box 201, Kabarnet",
         phoneNumber: "+254724628176",
         email: "atienopurity@gmail.com",
         password: "GOhome27",
        venue_id: 2
     }
]) 

puts "Done Seeding Managers"

puts "Seeding Clients......."

Client.create([
    {
      name: "Ibrahim mutua",
      username: "Mutua",
      age: 23,
      address: "P.O.Box 351, Mombasa",
      phoneNumber: "+254727421437",
      email: "ibrahimmutua@gmail.com",
      password: "fdtheg143",
    #   booking_id: 3
    },

    {
       name: "Henry kawira",
       username: "Xu khai",
       age: 25,
       address: "P.O.Box 30, Kabarnet",
       phoneNumber: "+254726574868",
       email: "henrykawira@gmail.com",
       password: "Xukhai25",
        # booking_id: 1
    },

    {
      name: "Pollax kibet",
      username: "Polla",
      age: 23,
      address: "P.O.Box 10, Eldoret",
      phoneNumber: "+254746782645",
      email: "pollaxkibet@gmail.com",
      password: "Polla273",
    #   booking_id: 2
    }
])
puts "Done Seeding Clients"


puts "Seeding Venues....."
30.times do 
    Venue.create!([

  {
    price: 10000,
  description: Faker::Lorem.paragraph,
  location: "Nairobi",
  capacity: Faker::Number.between(from: 10, to: 300),
  imageUrl: "https://www.pinterest.com/pin/708261478917481187/",
  client_id: rand(1..Client.all.size),
  manager_id: rand(1..Manager.all.size)
  },

  {
    price: 9000,
  description: Faker::Lorem.paragraph,
  location: "Mombasa",
  capacity: Faker::Number.between(from: 10, to: 300),
  imageUrl: "https://www.pinterest.com/pin/161214861655101531/",
  client_id: rand(1..Client.all.size),
  manager_id: rand(1..Manager.all.size)
  },

  {
    price: 8000,
  description: Faker::Lorem.paragraph,
  location: "Desmond Tutu",
  capacity: Faker::Number.between(from: 10, to: 300),
  imageUrl: "https://www.pinterest.com/pin/211174975171735/",
  client_id: rand(1..Client.all.size),
  manager_id: rand(1..Manager.all.size)
  },

  {
    price: 7000,
  description: Faker::Lorem.paragraph,
  location: "Merica",
  capacity: Faker::Number.between(from: 10, to: 300),
  imageUrl: "https://www.pinterest.com/pin/383509724529212900/",
  client_id: rand(1..Client.all.size),
  manager_id: rand(1..Manager.all.size)
  },

  {
    price: 4000,
  description: Faker::Lorem.paragraph,
  location: "Nakuru",
  capacity: Faker::Number.between(from: 10, to: 300),
  imageUrl: "https://www.pinterest.com/pin/1017039528323605108/"  ,
  client_id: rand(1..Client.all.size),
  manager_id: rand(1..Manager.all.size)
  },

  {
    price: 5000,
  description: Faker::Lorem.paragraph,
  location: "Buraha Zenoni",
  capacity: Faker::Number.between(from: 10, to: 300),
  imageUrl: "https://www.pinterest.com/pin/507710558004414104/",
  client_id: rand(1..Client.all.size),
  manager_id: rand(1..Manager.all.size)
  },

  {
    price: 10010,
  description: Faker::Lorem.paragraph,
  location: "GrandWinston",
  capacity: Faker::Number.between(from: 10, to: 300),
  imageUrl: "https://www.pinterest.com/pin/708261478917481187/",
  client_id: rand(1..Client.all.size),
  manager_id: rand(1..Manager.all.size)
  },

  {
    price: 1005880,
  description: Faker::Lorem.paragraph,
  location: "The Emory",
  capacity: Faker::Number.between(from: 10, to: 300),
  imageUrl: "https://www.pinterest.com/pin/5348093296837619/"  ,
  client_id: rand(1..Client.all.size),
  manager_id: rand(1..Manager.all.size)
  },

  {
    price: 10050,
  description: Faker::Lorem.paragraph,
  location: "NuruPalace",
  capacity: Faker::Number.between(from: 10, to: 300),
  imageUrl: "https://www.pinterest.com/pin/395753886017160086/"  ,
  client_id: rand(1..Client.all.size),
  manager_id: rand(1..Manager.all.size)
  },

  {
    price: 100890,
  description: Faker::Lorem.paragraph,
  location: "Eldoret",
  capacity: Faker::Number.between(from: 10, to: 300),
  imageUrl: "https://www.pinterest.com/pin/87749892732217631/",
  client_id: rand(1..Client.all.size),
  manager_id: rand(1..Manager.all.size)
  },

  {
    price: 100000,
  description: Faker::Lorem.paragraph,
  location: "Kakamega",
  capacity: Faker::Number.between(from: 10, to: 300),
  imageUrl: "https://www.pinterest.com/pin/103723597659532070/"  ,
  client_id: rand(1..Client.all.size),
  manager_id: rand(1..Manager.all.size)
  },

  {
    price: 105400,
  description: Faker::Lorem.paragraph,
  location: "Kiambu",
  capacity: Faker::Number.between(from: 10, to: 300),
  imageUrl: "https://www.pinterest.com/pin/116178865373536458/"  ,
  client_id: rand(1..Client.all.size),
  manager_id: rand(1..Manager.all.size)
  },

  {
    price: 10050,
  description: Faker::Lorem.paragraph,
  location: "Milimami APart",
  capacity: Faker::Number.between(from: 10, to: 300),
  imageUrl: "https://www.pinterest.com/pin/622693085984499573/ ",
  client_id: rand(1..Client.all.size),
  manager_id: rand(1..Manager.all.size)
  },

  {
    price: 14000,
  description: Faker::Lorem.paragraph,
  location: "Thika",
  capacity: Faker::Number.between(from: 10, to: 300),
  imageUrl: "https://www.pinterest.com/pin/155303887533749094/",
  client_id: rand(1..Client.all.size),
  manager_id: rand(1..Manager.all.size)
  },

  {
    price: 14000,
  description: Faker::Lorem.paragraph,
  location: "Kisumu",
  capacity: Faker::Number.between(from: 10, to: 300),
  imageUrl: "https://www.pinterest.com/pin/449937819034352088/",
  client_id: rand(1..Client.all.size),
  manager_id: rand(1..Manager.all.size)
  },

  {
    price: 10400,
  description: Faker::Lorem.paragraph,
  location: "Kileleshwa",
  capacity: Faker::Number.between(from: 10, to: 300),
  imageUrl: "https://www.pinterest.com/pin/303359724911963707/",
  client_id: rand(1..Client.all.size),
  manager_id: rand(1..Manager.all.size)
  },

  {
    price: 10040,
  description: Faker::Lorem.paragraph,
  location: "Lamu",
  capacity: Faker::Number.between(from: 10, to: 300),
  imageUrl: "https://www.pinterest.com/pin/358388082858960323/",
  client_id: rand(1..Client.all.size),
  manager_id: rand(1..Manager.all.size)
  },

  {
    price: 10000,
  description: Faker::Lorem.paragraph,
  location: "Malindi",
  capacity: Faker::Number.between(from: 10, to: 300),
  imageUrl: "https://www.pinterest.com/pin/304907837270619055/",
  client_id: rand(1..Client.all.size),
  manager_id: rand(1..Manager.all.size)
  },

  {
    price: 10500,
  description: Faker::Lorem.paragraph,
  location: "Kwale",
  capacity: Faker::Number.between(from: 10, to: 300),
  imageUrl: "https://www.pinterest.com/pin/341288477985566046/",
  client_id: rand(1..Client.all.size),
  manager_id: rand(1..Manager.all.size)
  },

  {
    price: 10200,
  description: Faker::Lorem.paragraph,
  location: "Taita Taveta",
  capacity: Faker::Number.between(from: 10, to: 300),
  imageUrl: "https://www.pinterest.com/pin/144959681741921800/",
  client_id: rand(1..Client.all.size),
  manager_id: rand(1..Manager.all.size)
  },

  {
    price: 10030,
  description: Faker::Lorem.paragraph,
  location: "Githurai",
  capacity: Faker::Number.between(from: 10, to: 300),
  imageUrl: "https://www.pinterest.com/pin/198580664809473816/",
  client_id: rand(1..Client.all.size),
  manager_id: rand(1..Manager.all.size)
  }
])
end
puts "Done Seeding Venues"


puts "Seeding Bookings....."
30.times do 
    Booking.create!([
        { 
            client_id: rand(1..Client.all.size),
            no_guest: Faker::Number.between(from: 10, to: 300),
            venue_id: rand(1..Venue.all.size),
            start_time: DateTime.new(2022,6,rand(1..30),rand(1..19),rand(1.60)),
            end_time: DateTime.new(2022,6,rand(1..30),rand(6..19),rand(1.60))
             
           
        }
    ]
)     
end        

puts "Done Seeding Bookings"

puts "Seeding Reviews....."

Review.create([
    {
        description: "It is an awesome venue, we had a good time",
        client_id: 1,
         venue_id: 2,
        ratings: 4
    },

    {
        description: "It is a nice place with enough space for hosting any event",
        client_id: 2,
        venue_id: 1,
        ratings: 5
    },

    {
        description: "We had a really nice time, I would recommend this venue to anyone planning to host an event especially wedding or party",
        client_id: 3,
        venue_id: 3,
        ratings: 5
    }
])

puts "Done Seeding Reviews"

puts "done seeding"

