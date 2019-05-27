puts "destroying all users"
User.destroy_all
puts "destroyed all users"

puts "making admin"
admin = User.create!(
  email: "admin@test.com",
  password: "123456",
  admin: true
  )
puts "admin made"

puts "making employee"
admin = User.create!(
  email: "employee@test.com",
  password: "123456",
  employee: true
  )
puts "employee made"

puts "making tenant"
admin = User.create!(
  email: "tenant@test.com",
  password: "123456",
  tenant: true
  )
puts "tenant made"

puts "deleting all developments"
Development.destroy_all
puts "deleted all developments"

puts "creating Development 1"
dev1 = Development.create!(
  name: "Development 1",
  address: "First road, First town",
  gym: true,
  swimming_pool: true,
  sauna_and_steam: true,
  generator: true,
  parking_space: 5,
  number_of_units: 2
    )

puts "Development 1 created"


puts "creating Development 2"
dev1 = Development.create!(
  name: "Development 1",
  address: "Second road, Second town",
  gym: true,
  swimming_pool: true,
  sauna_and_steam: true,
  generator: true,
  parking_space: 5,
  number_of_units: 3
    )

puts "Development 2 created"

puts "deleting all units"

Unit.destroy_all

puts "all units deleted"

puts "creating all units for development 1"

dev1unit1 = Unit.create!(
  unit_number: 1,
  floor: 1,
  size: 300,
  bedrooms: 4,
  bathrooms: 3,
  price: 3000,
  apartment: true,
  description: "big unit",
  development_id: 1)

dev1unit2 = Unit.create!(
  unit_number: 2,
  floor: 2,
  size: 500,
  bedrooms: 5,
  bathrooms: 3,
  price: 4000,
  apartment: true,
  description: "biggest unit",
  development_id: 1)

puts "units created for development 1"

puts "creating units for development 2"

dev2unit1 = Unit.create!(
  unit_number: 1,
  floor: 1,
  size: 300,
  bedrooms: 4,
  bathrooms: 2,
  price: 2000,
  apartment: true,
  description: "small unit",
  development_id: 1)

dev2unit2 = Unit.create!(
  unit_number: 2,
  floor: 2,
  size: 450,
  bedrooms: 5,
  bathrooms: 3,
  price: 4000,
  apartment: true,
  description: "medium unit",
  development_id: 1)

dev2unit3 = Unit.create!(
  unit_number: 3,
  floor: 3,
  size: 600,
  bedrooms: 5,
  bathrooms: 3,
  price: 4500,
  apartment: true,
  description: "biggest unit",
  development_id: 1)

puts "created all units for dev2"

