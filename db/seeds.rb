# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# db/seeds.rb
user = User.new({ :first_name => "James", :last_name => "Bond", :email => "jamesbond@monster.com", :password => "agent007", :role => "manager" })
admin = Admin.new({ :first_name => "Admin", :last_name => "Bond", :email => "adminbond@monster.com", :password => "agent007", :role => "manager" })
# user.hash_password
user.save