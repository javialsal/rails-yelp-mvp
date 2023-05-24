puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "french"}
pizza_east =  {name: "Pizza East", address: "6A Shoreditch High St, London E1 6PQ", category: "french"}
casa_paca = {name: "Casa Paca", address: "7 Boundary St, London E2 7JE", category: "french"}
arbore =  {name: "Arbore da veira", address: "56A La coruña, Spain", category: "french"}
cacheiras =  {name: "El rey de las tortillas", address: "56A Cacheiras, Spain", category: "french"}

[dishoom, pizza_east, casa_paca, arbore, cacheiras].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
