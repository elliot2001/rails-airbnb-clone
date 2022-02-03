# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first

puts "Destroying current data --------------------------"
Booking.destroy_all
Castle.destroy_all
User.destroy_all

# Utilisateur 
puts "Creating user----------------------------------"
# dans la seed créer des utilisateurs
annelaure = User.create(email: "anne-laure@gmail.com", first_name: "Anne Laure", last_name: "Le",phone: "00000000000", password:"12345678" )
marinna = User.create(email: "marina.magnoli@gmail.com", first_name: "Marina", last_name: "Magnoli",phone: "00000000000", password:"12345678" )
User.create(email: "julia.foucher@gmail.com", first_name: "Julia", last_name: "Foucher",phone: "00000000000", password:"12345678" )
User.create(email: "elliot.thyrant@gmail.com", first_name: "Elliot", last_name: "Thyrant",phone: "00000000000", password:"12345678" )


puts "création chateaux --------------------------"
# créer la seed pour créer des chateaux.
Castle.create(address: "19rue", title: "chambort", price: 150, description: "no", max_capacity: 200, user: annelaure)
Castle.create(address: "19rue", title: "chambort2", price: 150, description: "no", max_capacity: 200, user: annelaure)


# bookings pour r créer le sbookings*
