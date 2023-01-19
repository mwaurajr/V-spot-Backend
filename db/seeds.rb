require "open-uri"
ApplicationRecord.transaction do 
    puts "Destroying tables..."
    User.destroy_all
    Listing.destroy_all
    Review.destroy_all
    Reservation.destroy_all
    puts "Resetting primary keys..."
    ApplicationRecord.connection.reset_pk_sequence!('users')
    ApplicationRecord.connection.reset_pk_sequence!('listings')
    ApplicationRecord.connection.reset_pk_sequence!('reviews')
    ApplicationRecord.connection.reset_pk_sequence!('reservations')
  
    puts "Creating users..."
    user1 = User.create!(
      about: "",
      email: 'hanmikechen@gmail.com', 
      password: 'password',
      first_name: 'Han',
      last_name: 'Chen',
      birth_date: '28/10/1991',
      phone_number: '2129617000'
    )
    user2 = User.create!(
      about: "",
      email: 'Tammylove@fb.com', 
      password: 'password',
      first_name: 'Tammy',
      last_name: 'Pink',
      birth_date: '01/01/1989',
      phone_number: '1234567893'
    )
    user3 = User.create!(
      about: "",
      email: 'kimmystar@gmail.com', 
      password: 'password',
      first_name: 'Kimmy',
      last_name: 'Star',
      birth_date: '01/01/1991',
      phone_number: '1234567894'
    )
    user4 = User.create!(
      about: "",
      email: 'apple4ever@icloud.com', 
      password: 'password',
      first_name: 'George',
      last_name: 'Michels',
      birth_date: '01/01/1991',
      phone_number: '1234567895'
    )
    user5 = User.create!(
      about: "",
      email: 'clairsynclare@icloud.com', 
      password: 'password',
      first_name: 'Claire',
      last_name: 'Synclare',
      birth_date: '27/10/1993',
      phone_number: '1234567896'
    )
    
    user6 = User.create!(
      about: "",
      email: 'lavenderstory@icloud.com', 
      password: 'password',
      first_name: 'Iris',
      last_name: 'Ishka',
      birth_date: '03/05/1992',
      phone_number: '1234567897'
    )
    user7 = User.create!(
      about: "",
      email: 'tommycuzy@icloud.com', 
      password: 'password',
      first_name: 'Tom',
      last_name: 'Cruzer',
      birth_date: '12/11/1994',
      phone_number: '1234567898'
    )
    user8 = User.create!(
      about: "",
      email: 'iheartgoogle@gmail.com', 
      password: 'password',
      first_name: 'Dan',
      last_name: 'Brown',
      birth_date: '12/12/1994',
      phone_number: '1234567899'
    )
  
    puts "Creating listings..."
    listing6 = Listing.create!({
      title: 'Hudson Yards 2BR Luxury Views',
      description: "Georgeous apartment unit with modern styling.  Great views of the city and gets plenty of sunlight all year round.",
      price: 525,
      guests: 4,
      bedrooms: 2,
      beds: 2,
      baths: 2,
      address: '199 Hudson Blvd.',
      city: 'Manhattan',
      state: 'NY',
      country: 'Kenya',
      wifi: true,
      parking: false,
      kitchen: true,
      dedicated_workspace: true,
      prop_type: 'Apartment',
      pets_allowed: true,
      user_id: 4,
      lat: 40.7558606730357,
      lng: -74.00159449170306
    })

    listing2 = Listing.create!({
      title: '3 BD Manhattan High Life',
      description: "Living the life of luxury in Manhattan Penthouse, with the best views of the city.",
      price: Faker::Number.within(range: 500..800),
      guests: 6,
      bedrooms: 3,
      beds: 4,
      baths: 2,
      address: '1 Park Ave',
      city: 'Manhattan',
      state: 'NY',
      country: 'Kenya',
      wifi: true,
      parking: false,
      kitchen: true,
      dedicated_workspace: true,
      prop_type:'Loft',
      pets_allowed: true,
      user_id: 5,
      lat: 40.773506142037114,
      lng: -73.96588646726212
    })
    listing3 = Listing.create!({
      title: 'Best Views in Manhattan with Full Roof Top Access',
      description: "One of the best views of the city if not the best view of the city.  A newer luxury condo in the heart of the city.  Enjoyed everything the city has to offer,   Broadway plays walk to with in mins,  Madison Square Garden, Center Park,  high end shopping of 5th Ave and the best restaurant in the world unless you feel like a $1.00 slice of pizza Manhattan has that for you to.  Perfect home away from home for you and the family.",
      price: Faker::Number.within(range: 500..900),
      guests: 5,
      bedrooms: 2,
      beds: 2,
      baths: 2,
      address: '12 Broadway st.',
      city: 'Manhattan',
      state: 'NY',
      country: 'Kenya',
      wifi: true,
      parking: true,
      kitchen: false,
      dedicated_workspace: false,
      prop_type: 'Loft',
      pets_allowed: true,
      user_id: 6,
      lat: 40.721525397897885,
      lng: -73.99980873460277
    })
    listing4 = Listing.create!({
      title: 'Warm Contemporary Penthouse with Rooftop',
      description: "Meet Casa Caeli by Cocoon Flex Spaces.
      Casa Caeli is a quiet haven in the heart of Greenpoint, Brooklyn.
      Our bestseller 3,000 square-foot penthouse loft offers an open layout on two floors, an abundance of natural light, unbeatable views of the Brooklyn and Manhattan Skyline, and possesses a bright and warm character with high-quality finishes that exude an elevated elegance.
      ",
      price: Faker::Number.within(range: 300..700),
      guests: 6,
      bedrooms: 3,
      beds: 3,
      baths: 3,
      address: '100 Dumbo St.',
      city: 'Dumbo',
      state: 'NY',
      country: 'Kenya',
      wifi: true,
      parking: true,
      kitchen: true,
      dedicated_workspace: true,
      prop_type: 'Apartment',
      pets_allowed: true,
      user_id: 3,
      lat: 40.70376570566167, 
      lng: -73.9897054035584
    })