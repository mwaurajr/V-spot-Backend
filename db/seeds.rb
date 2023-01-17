
Manager.destroy_all
Client.destroy_all
Review.destroy_all
Admin.destroy_all

puts "start seeding"

Admin.create([
    {
        name: "Frankline chebukati",
        username: "frank",
        email: "frank@venuspot.admin",
        password: "Frank@345"
    },

    {
        name: "Frankline chebukati",
        username: "frank",
        email: "frank@gmail.com",
        password: "Frank@3"
    }
])

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

Client.create([
    {
      name: "Ibrahim mutua",
      username: "Mutua",
      age: 23,
      address: "P.O.Box 351, Mombasa",
      phoneNumber: "+254727421437",
      email: "ibrahimmutua@gmail.com",
      password: "fdtheg143",
      booking_id: 3
    },

    {
       name: "Henry kawira",
       username: "Xu khai",
       age: 25,
       address: "P.O.Box 30, Kabarnet",
       phoneNumber: "+254726574868",
       email: "henrykawira@gmail.com",
       password: "Xukhai25",
        booking_id: 1
    },

    {
      name: "Pollax kibet",
      username: "Polla",
      age: 23,
      address: "P.O.Box 10, Eldoret",
      phoneNumber: "+254746782645",
      email: "pollaxkibet@gmail.com",
      password: "Polla273",
      booking_id: 2
    }
])

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

30.times do 
    Venue.create(
  price: Faker::Commerce.price,
  description: Faker::Lorem.paragraph,
  location: Faker::Address.city,
  capacity: Faker::Number.between(from: 10, to: 300),
  imageUrl: Faker::Avatar.image,
  client_id: rand(1..Client.all.size),
  manager_id: rand(1..Manager.all.size)
)
end
30.times do 
    Booking.create(
    no_guest: Faker::Number.between(from: 10, to: 300),
    venue_id: rand(1..Venue.all.size),
    start_time: DateTime.new(2022,6,rand(1..30),rand(1..19),rand(1.60)),
    end_time: DateTime.new(2022,6,rand(1..30),rand(6..19),rand(1.60))
)
end


puts "done seeding"

