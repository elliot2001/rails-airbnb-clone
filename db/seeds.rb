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
Castle.create(id: 1, address: "Paris", title: "Château de Julia", price: 250, description: "Ce manoir de luxe est situé sur 7 hectares de terrain privé dans la campagne française et propose 2 grandes chambres avec salles de douche privatives, 2 grandes chambres avec des lits jumeaux.", max_capacity: 10, user: annelaure, longitude: 2.3214722, latitude: 48.8838232)
Castle.create(id: 2, address: "Chambord", title: "Chambord", price: 450, description: "Construit au cœur du plus grand parc forestier clos d’Europe, il s'agit du plus vaste des châteaux de la Loire.", max_capacity: 200, user: annelaure, longitude: 1.516793, latitude: 47.616211)
Castle.create(id: 3, address: "Coupvray", title: "Coupvray", price: 150, description: "Respirez et admirez le patrimoine et la nature dans cet havre de paix loin des tumultes de la vie citadine !", max_capacity: 8, user: annelaure, longitude: 2.776623, latitude: 48.871900)
Castle.create(id: 4, address: "Versailles", title: "Versailles", price: 650, description: "Le château de Versailles, dont les origines remontent au XVIIe siècle. Composé du Parc et des jardins ainsi que des châteaux de Trianon, il s’étend sur 800 hectares.", max_capacity: 300, user: annelaure, longitude: 4.860201, latitude: 45.748112)
Castle.create(id: 5, address: "Giverny", title: "Giverny", price: 150, description: "Ce manoir de luxe est situé sur 7 hectares de terrain privé dans la campagne française. Une magnifique demeure qui pourra aisément accueillir 10 personnes.", max_capacity: 10, user: annelaure, longitude: 1.53333, latitude: 49.066669)
Castle.create(id: 6, address: "Villandry", title: "Villandry", price: 350, description: "Le château de Villandry est un ensemble entremêlant intimement architecture et jardins, situé à 15 km à l'ouest de Tours. Dernier des grands palais qui furent bâtis sur les bords de Loire au xvie siècle", max_capacity: 150, user: annelaure, longitude: 0.5105, latitude: 47.3402)
Castle.create(id: 7, address: "Chenonceau", title: "Chenonceau", price: 450, description: "Le Château de Chenonceau, joyau des châteaux de la Loire, vous accueille pour tous vos évènements privés.", max_capacity: 100, user: annelaure, longitude: 1.069, latitude: 47.332)
Castle.create(id: 8, address: "Amboise", title: "Amboise", price: 550, description: "Expression totale du luxe et de l'art de vivre à la française, le château d'Amboise est aussi un balcon tout à fait unique et monumental, ouvert à 360° sur des paysages inscrits au Patrimoine Mondial de l'Humanité.", max_capacity: 200, user: annelaure, longitude: 0.994337, latitude: 47.326269)
Castle.create(id: 9, address: "La Celle-Saint-Cloud", title: "Beauregard", price: 150, description: "Somptueux château à louer pour vos évènements. 10 confortables couchages.", max_capacity: 10, user: annelaure, longitude: 1.23059, latitude: 47.32779)
Castle.create(id: 10, address: "Azay-le-Rideau", title: "Azay-le-Rideau", price: 150, description: "Subtile alliance de traditions françaises et de décors innovants venus d'Italie. Son parc paysager, conçu dans la seconde moitié du XIXe siècle, lui offre un véritable écrin naturel.", max_capacity: 200, user: annelaure, longitude: 0.46574, latitude: 47.26177)


# bookings pour r créer le sbookings

