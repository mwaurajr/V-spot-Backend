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

    Venue.create!([

  {
    price: 1000,
  description: Faker::Lorem.paragraph,
  location: "Nairobi",
  capacity: Faker::Number.between(from: 10, to: 300),
  imageUrl: "https://media.istockphoto.com/id/1029195356/photo/wedding-day-decoration-for-a-outside-wedding.jpg?s=612x612&w=0&k=20&c=RV_KGz6asDO5af12ghMS2TNlvO6xHfN3CBjyFO8fxQI=",
  client_id: rand(1..Client.all.size),
  manager_id: rand(1..Manager.all.size)
  },

  {
    price: 9000,
  description: Faker::Lorem.paragraph,
  location: "Mombasa",
  capacity: Faker::Number.between(from: 10, to: 300),
  imageUrl: "https://i.pinimg.com/236x/b6/a6/6e/b6a66e67b0906a0b6215da990c2a895e.jpg",
  client_id: rand(1..Client.all.size),
  manager_id: rand(1..Manager.all.size)
  },

  {
    price: 8000,
  description: Faker::Lorem.paragraph,
  location: "Desmond Tutu",
  capacity: Faker::Number.between(from: 10, to: 300),
  imageUrl: "https://i.pinimg.com/236x/9a/81/6c/9a816c7790d21e06ad76edbef0296416.jpg",
  client_id: rand(1..Client.all.size),
  manager_id: rand(1..Manager.all.size)
  },

  {
    price: 7000,
  description: Faker::Lorem.paragraph,
  location: "Merica",
  capacity: Faker::Number.between(from: 10, to: 300),
  imageUrl: "https://i.pinimg.com/236x/c7/94/86/c7948659a4265185110a839fe7f00432.jpg",
  client_id: rand(1..Client.all.size),
  manager_id: rand(1..Manager.all.size)
  },

  {
    price: 4000,
  description: Faker::Lorem.paragraph,
  location: "Nakuru",
  capacity: Faker::Number.between(from: 10, to: 300),
  imageUrl: "https://i.pinimg.com/236x/ba/8d/1a/ba8d1a70bbf58147e933cef425c1e6de.jpg"  ,
  client_id: rand(1..Client.all.size),
  manager_id: rand(1..Manager.all.size)
  },

  {
    price: 5000,
  description: Faker::Lorem.paragraph,
  location: "Buraha Zenoni",
  capacity: Faker::Number.between(from: 10, to: 300),
  imageUrl: "https://i.pinimg.com/236x/01/90/29/019029cdeb1a0abb2e910228a95b4773.jpg",
  client_id: rand(1..Client.all.size),
  manager_id: rand(1..Manager.all.size)
  },

  {
    price: 10000,
  description: Faker::Lorem.paragraph,
  location: "GrandWinston",
  capacity: Faker::Number.between(from: 10, to: 300),
  imageUrl: "https://i.pinimg.com/236x/02/f9/fd/02f9fde573060c168850cf3365ce5dc5.jpg",
  client_id: rand(1..Client.all.size),
  manager_id: rand(1..Manager.all.size)
  },

  {
    price: 10080,
  description: Faker::Lorem.paragraph,
  location: "The Emory",
  capacity: Faker::Number.between(from: 10, to: 300),
  imageUrl: "https://i.pinimg.com/236x/df/24/38/df243872ec9d2a4574127a200300ebc2.jpg"  ,
  client_id: rand(1..Client.all.size),
  manager_id: rand(1..Manager.all.size)
  },

  {
    price: 10050,
  description: Faker::Lorem.paragraph,
  location: "NuruPalace",
  capacity: Faker::Number.between(from: 10, to: 300),
  imageUrl: "https://i.pinimg.com/236x/01/54/0e/01540e59e15f5a76fc02eac2dcbb5d90.jpg"  ,
  client_id: rand(1..Client.all.size),
  manager_id: rand(1..Manager.all.size)
  },

  {
    price: 1500,
  description: Faker::Lorem.paragraph,
  location: "Eldoret",
  capacity: Faker::Number.between(from: 10, to: 300),
  imageUrl: "https://media.istockphoto.com/id/1097270470/photo/floral-arrangement-decoration-for-the-backdrop-of-wedding-arch.webp?s=612x612&w=is&k=20&c=oYJJCmgpaHXIdbs5s43SlmGP2xepm3Fl2mT_SvkK5OI=",
  client_id: rand(1..Client.all.size),
  manager_id: rand(1..Manager.all.size)
  },

  {
    price: 10000,
  description: Faker::Lorem.paragraph,
  location: "Kakamega",
  capacity: Faker::Number.between(from: 10, to: 300),
  imageUrl: "https://media.istockphoto.com/id/472999512/photo/footpath-in-a-botanical-garden-with-orchids-lining-the-path.jpg?s=1024x1024&w=is&k=20&c=O9LzkZQ4I2RHbHLNMPJGn41DUWLgpUaYhrsXuus4J_Y=",
  client_id: rand(1..Client.all.size),
  manager_id: rand(1..Manager.all.size)
  },

  {
    price: 5400,
  description: Faker::Lorem.paragraph,
  location: "Kiambu",
  capacity: Faker::Number.between(from: 10, to: 300),
  imageUrl: "https://i.pinimg.com/originals/d0/ef/e7/d0efe7349982bdea97a74d03787a6e05.jpg"  ,
  client_id: rand(1..Client.all.size),
  manager_id: rand(1..Manager.all.size)
  },

  {
    price: 1450,
  description: Faker::Lorem.paragraph,
  location: "Milimami APart",
  capacity: Faker::Number.between(from: 10, to: 300),
  imageUrl: "https://media.istockphoto.com/id/516843392/photo/wedding-banquet-in-garden.jpg?b=1&s=170667a&w=0&k=20&c=9OUTzD0iDNryxdJOxpRwvKt-vBpjvKvTWL91kOmn-W0=",
  client_id: rand(1..Client.all.size),
  manager_id: rand(1..Manager.all.size)
  },

  {
    price: 1400,
  description: Faker::Lorem.paragraph,
  location: "Thika",
  capacity: Faker::Number.between(from: 10, to: 300),
  imageUrl: "https://media.istockphoto.com/id/1365834463/photo/chairs-in-front-of-a-wedding-altar-on-a-background-of-green-trees-and-grass-wedding-ceremony.jpg?b=1&s=170667a&w=0&k=20&c=FsLNwsZZgPavrtG7crywtl_3I66JXVGjWm9fUYgK0Po=",
  client_id: rand(1..Client.all.size),
  manager_id: rand(1..Manager.all.size)
  },

  {
    price: 14500,
  description: Faker::Lorem.paragraph,
  location: "Kisumu",
  capacity: Faker::Number.between(from: 10, to: 300),
  imageUrl: "https://media.istockphoto.com/id/89352097/photo/garden-wedding-chairs-and-flowers.jpg?s=1024x1024&w=is&k=20&c=TBr9KYjMCmKCMPtC41BFXO_a7-dAVIgoFRJI5GnH7ls=",
  client_id: rand(1..Client.all.size),
  manager_id: rand(1..Manager.all.size)
  },

  {
    price: 10500,
  description: Faker::Lorem.paragraph,
  location: "Kileleshwa",
  capacity: Faker::Number.between(from: 10, to: 300),
  imageUrl: "https://media.istockphoto.com/id/147953641/photo/wedding-veranda-in-hotel.jpg?s=612x612&w=is&k=20&c=icj4KOnj2lbmhft-O16Z1mo8byUnTAKl6pYaAQOz3Kc=",
  client_id: rand(1..Client.all.size),
  manager_id: rand(1..Manager.all.size)
  },

  {
    price: 20000,
  description: Faker::Lorem.paragraph,
  location: "Lamu",
  capacity: Faker::Number.between(from: 10, to: 300),
  imageUrl: "hhttps://images.unsplash.com/photo-1557296440-0dc5e8ba9bc8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
  client_id: rand(1..Client.all.size),
  manager_id: rand(1..Manager.all.size)
  },

  {
    price: 10000,
  description: Faker::Lorem.paragraph,
  location: "Malindi",
  capacity: Faker::Number.between(from: 10, to: 300),
  imageUrl: "https://i.pinimg.com/564x/e5/0f/6d/e50f6db8dfd3f068f269fb11e6468c3b.jpg",
  client_id: rand(1..Client.all.size),
  manager_id: rand(1..Manager.all.size)
  },

  {
    price: 10500,
  description: Faker::Lorem.paragraph,
  location: "Kwale",
  capacity: Faker::Number.between(from: 10, to: 300),
  imageUrl: "https://images.unsplash.com/photo-1629243623657-17431c65be8b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
  client_id: rand(1..Client.all.size),
  manager_id: rand(1..Manager.all.size)
  },

  {
    price: 10200,
  description: Faker::Lorem.paragraph,
  location: "Taita Taveta",
  capacity: Faker::Number.between(from: 10, to: 300),
  imageUrl: "https://plus.unsplash.com/premium_photo-1664471481659-bc3c4cedab70?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1376&q=80",
  client_id: rand(1..Client.all.size),
  manager_id: rand(1..Manager.all.size)
  },

  {
    price: 6000,
  description: Faker::Lorem.paragraph,
  location: "Githurai",
  capacity: Faker::Number.between(from: 10, to: 300),
  imageUrl: "https://media.istockphoto.com/id/1408017316/photo/beautiful-wedding-decoration-the-area-of-the-wedding-ceremony-an-arch-of-flowers-golden.jpg?s=1024x1024&w=is&k=20&c=YLHdDpPGbSSxGr-Q6OD4KRMP_LytNrToL3YBR7IgGvM=",
  client_id: rand(1..Client.all.size),
  manager_id: rand(1..Manager.all.size)
  }
])

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
Review.create!([
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

