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
Castle.create(id: 1, address: "52 rue des dames, Paris", title: "Julia Castle", price: 150, description: "Ce manoir de luxe est situé sur 7 hectares de terrain privé dans la campagne française et propose deux grandes chambres doubles, toutes deux avec salles de douche privatives, deux grandes chambres lits jumeaux et une belle grande salle de bains familiale récemment rénovée. Une cuisine de ferme française bien équipée mène directement à une table à manger extérieure pouvant accueillir 10 personnes. Deux salles de réception spacieuses sont confortablement meublées pour la vie de famille avec une grande table à manger, une télévision et un espace de jeux, et des sièges confortables.", max_capacity: 10, user: annelaure, longitude: 2.3214722, latitude: 48.8838232)
Castle.create(id: 2, address: "Château de Chambord", title: "Chambord", price: 150, description: "no", max_capacity: 200, user: annelaure, longitude: 1.516793, latitude: 47.616211)
Castle.create(id: 3, address: "Boulevard de Parc, Coupvray", title: "DisneyLand", price: 150, description: "Ce manoir de luxe est situé sur 7 hectares de terrain privé dans la campagne française et propose deux grandes chambres doubles, toutes deux avec salles de douche privatives, deux grandes chambres lits jumeaux et une belle grande salle de bains familiale récemment rénovée. Une cuisine de ferme française bien équipée mène directement à une table à manger extérieure pouvant accueillir 10 personnes. Deux salles de réception spacieuses sont confortablement meublées pour la vie de famille avec une grande table à manger, une télévision et un espace de jeux, et des sièges confortables.", max_capacity: 10, user: annelaure, longitude: 2.776623, latitude: 48.871900)
Castle.create(id: 4, address: "Place d'Armes, Versailles", title: "Versailles", price: 90, description: "no", max_capacity: 200, user: annelaure, longitude: 4.860201, latitude: 45.748112)
Castle.create(id: 5, address: "99 rue Claude Monet, Giverny", title: "Giverny", price: 150, description: "Ce manoir de luxe est situé sur 7 hectares de terrain privé dans la campagne française et propose deux grandes chambres doubles, toutes deux avec salles de douche privatives, deux grandes chambres lits jumeaux et une belle grande salle de bains familiale récemment rénovée. Une cuisine de ferme française bien équipée mène directement à une table à manger extérieure pouvant accueillir 10 personnes. Deux salles de réception spacieuses sont confortablement meublées pour la vie de famille avec une grande table à manger, une télévision et un espace de jeux, et des sièges confortables.", max_capacity: 10, user: annelaure, longitude: 1.53333, latitude: 49.066669)
Castle.create(id: 6, address: "3 rue Principale, Villandry", title: "Villandry", price: 80, description: "no", max_capacity: 200, user: annelaure, longitude: 0.5105, latitude: 47.3402)
Castle.create(id: 7, address: "37150 Chenonceau", title: "Chenonceau", price: 150, description: "Ce manoir de luxe est situé sur 7 hectares de terrain privé dans la campagne française et propose deux grandes chambres doubles, toutes deux avec salles de douche privatives, deux grandes chambres lits jumeaux et une belle grande salle de bains familiale récemment rénovée. Une cuisine de ferme française bien équipée mène directement à une table à manger extérieure pouvant accueillir 10 personnes. Deux salles de réception spacieuses sont confortablement meublées pour la vie de famille avec une grande table à manger, une télévision et un espace de jeux, et des sièges confortables.", max_capacity: 10, user: annelaure, longitude: 1.069, latitude: 47.332)
Castle.create(id: 8, address: "Mnt de l'Emir, Amboise", title: "Amboise", price: 69, description: "no", max_capacity: 200, user: annelaure, longitude: 0.994337, latitude: 47.326269)
Castle.create(id: 9, address: "Pl. du Comté de Bendern", title: "Beauregard", price: 150, description: "Ce manoir de luxe est situé sur 7 hectares de terrain privé dans la campagne française et propose deux grandes chambres doubles, toutes deux avec salles de douche privatives, deux grandes chambres lits jumeaux et une belle grande salle de bains familiale récemment rénovée. Une cuisine de ferme française bien équipée mène directement à une table à manger extérieure pouvant accueillir 10 personnes. Deux salles de réception spacieuses sont confortablement meublées pour la vie de famille avec une grande table à manger, une télévision et un espace de jeux, et des sièges confortables.", max_capacity: 10, user: annelaure, longitude: 1.23059, latitude: 47.32779)
Castle.create(id: 10, address: "62 r St Antoine", title: "Azay-le-Rideau", price: 69, description: "no", max_capacity: 200, user: annelaure, longitude: 0.46574, latitude: 47.26177)


# bookings pour r créer le sbookings
