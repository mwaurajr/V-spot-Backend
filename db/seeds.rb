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