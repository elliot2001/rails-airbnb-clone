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
Castle.create(id: 1, address: "Parthenay, Deux-Sèvres", title: "Beau Manoir 1", price: 150, description: "Ce manoir de luxe est situé sur 7 hectares de terrain privé dans la campagne française et propose deux grandes chambres doubles, toutes deux avec salles de douche privatives, deux grandes chambres lits jumeaux et une belle grande salle de bains familiale récemment rénovée. Une cuisine de ferme française bien équipée mène directement à une table à manger extérieure pouvant accueillir 10 personnes. Deux salles de réception spacieuses sont confortablement meublées pour la vie de famille avec une grande table à manger, une télévision et un espace de jeux, et des sièges confortables.", max_capacity: 10, user: annelaure)
Castle.create(id: 2, address: "19 rue du château", title: "Chambord", price: 150, description: "no", max_capacity: 200, user: annelaure)
Castle.create(id: 3, address: "Parthenay, Deux-Sèvres", title: "Beau Manoir 2", price: 150, description: "Ce manoir de luxe est situé sur 7 hectares de terrain privé dans la campagne française et propose deux grandes chambres doubles, toutes deux avec salles de douche privatives, deux grandes chambres lits jumeaux et une belle grande salle de bains familiale récemment rénovée. Une cuisine de ferme française bien équipée mène directement à une table à manger extérieure pouvant accueillir 10 personnes. Deux salles de réception spacieuses sont confortablement meublées pour la vie de famille avec une grande table à manger, une télévision et un espace de jeux, et des sièges confortables.", max_capacity: 10, user: annelaure)
Castle.create(id: 4, address: "20 rue du château", title: "Blois", price: 90, description: "no", max_capacity: 200, user: annelaure)
Castle.create(id: 5, address: "Parthenay, Deux-Sèvres", title: "Beau Manoir 3", price: 150, description: "Ce manoir de luxe est situé sur 7 hectares de terrain privé dans la campagne française et propose deux grandes chambres doubles, toutes deux avec salles de douche privatives, deux grandes chambres lits jumeaux et une belle grande salle de bains familiale récemment rénovée. Une cuisine de ferme française bien équipée mène directement à une table à manger extérieure pouvant accueillir 10 personnes. Deux salles de réception spacieuses sont confortablement meublées pour la vie de famille avec une grande table à manger, une télévision et un espace de jeux, et des sièges confortables.", max_capacity: 10, user: annelaure)
Castle.create(id: 6, address: "21 rue du château", title: "Vilandry", price: 80, description: "no", max_capacity: 200, user: annelaure)
Castle.create(id: 7, address: "Parthenay, Deux-Sèvres", title: "Beau Manoir 4", price: 150, description: "Ce manoir de luxe est situé sur 7 hectares de terrain privé dans la campagne française et propose deux grandes chambres doubles, toutes deux avec salles de douche privatives, deux grandes chambres lits jumeaux et une belle grande salle de bains familiale récemment rénovée. Une cuisine de ferme française bien équipée mène directement à une table à manger extérieure pouvant accueillir 10 personnes. Deux salles de réception spacieuses sont confortablement meublées pour la vie de famille avec une grande table à manger, une télévision et un espace de jeux, et des sièges confortables.", max_capacity: 10, user: annelaure)
Castle.create(id: 8, address: "12 rue du château", title: "Chambord bis", price: 69, description: "no", max_capacity: 200, user: annelaure)
Castle.create(id: 9, address: "Parthenay, Deux-Sèvres", title: "Beau Manoir 5", price: 150, description: "Ce manoir de luxe est situé sur 7 hectares de terrain privé dans la campagne française et propose deux grandes chambres doubles, toutes deux avec salles de douche privatives, deux grandes chambres lits jumeaux et une belle grande salle de bains familiale récemment rénovée. Une cuisine de ferme française bien équipée mène directement à une table à manger extérieure pouvant accueillir 10 personnes. Deux salles de réception spacieuses sont confortablement meublées pour la vie de famille avec une grande table à manger, une télévision et un espace de jeux, et des sièges confortables.", max_capacity: 10, user: annelaure)
Castle.create(id: 10, address: "40 rue du château", title: "Blois bis", price: 10000, description: "no", max_capacity: 200, user: annelaure)


# bookings pour r créer le sbookings
