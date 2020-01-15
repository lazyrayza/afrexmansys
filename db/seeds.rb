puts "destroying all users"
User.destroy_all
puts "destroyed all users"

puts "making admin"
admin = User.create!(
  email: "raza@afrex.com",
  password: "123456",
  admin: true,
  first_name: 'Raza',
  last_name: "Pirbhai"
  )
puts "admin made"

puts "making Admin Team"
yaseen = User.create!(
  email: "yaseen@admin.com",
  password: "123456",
  employee: true,
  manager: true,
  first_name: 'yaseen',
  last_name: "Mohamed"
  )
ali_a = User.create!(
  email: "ali.asgar@employee.com",
  password: "123456",
  employee: true,
  first_name: 'Ali',
  last_name: "Asgar"
  )
rakesh = User.create!(
  email: "rakesh@admin.com",
  password: "123456",
  employee: true,
  first_name: 'Rakesh',
  last_name: "Gokal"
  )
puts "admin team made"

puts "creating Marketing & Leasing team"

batul = User.create!(
  email: "batul@sales.com",
  password: "123456",
  employee: true,
  manager: true,
  first_name: 'Batul',
  last_name: "Kara"
  )
ezekial = User.create!(
  email: "ezekiall@sales.com",
  password: "123456",
  employee: true,
  first_name: 'Ezekial',
  last_name: "..."
  )
puts "Marketing and Leasing Team made"



puts "making tenant"

lizzie = User.create!(
  email: "lizzie@tenant.com",
  password: "123456",
  tenant: true
  )
tommy = User.create!(
  email: "tommy@tenant.com",
  password: "123456",
  tenant: true
  )
johnny = User.create!(
  email: "Johnny@tenant.com",
  password: "123456",
  tenant: true
  )
fatima = User.create!(
  email: "fatima@tenant.com",
  password: "123456",
  tenant: true
  )
donald = User.create!(
  email: "donald@tenant.com",
  password: "123456",
  tenant: true
  )
takumi = User.create!(
  email: "takumi@tenant.com",
  password: "123456",
  tenant: true
  )
marry = User.create!(
  email: "marry@tenant.com",
  password: "123456",
  tenant: true
  )
puts "tenants made"


puts "destroying all developments"
Development.destroy_all
puts "destroyed all users"

puts "creating Marina Towers"

marinatowers = Development.create!(
  name: "Marina Towers",
  address: "Yatch club road",
  gym: true,
  swimming_pool: true,
  sauna_and_steam: true,
  generator: true,
    )

puts "Marina Towers created"

puts "creating Sea Rock"

searock = Development.create!(
  name: "Sea Rock",
  address: "Yatch club road",
  gym: true,
  swimming_pool: true,
  sauna_and_steam: true,
  generator: true,
    )

puts "Sea Rock created"

puts "creating Ocean View Apartments"

oceanva = Development.create!(
  name: "Ocean View Apartments",
  address: "Yatch club road",
  gym: true,
  swimming_pool: true,
  sauna_and_steam: true,
  generator: true,
    )

puts "Ocean View Apartments created"

puts "creating KK Villas"

kkvillas = Development.create!(
  name: "KK Villas",
  address: "Yatch club road",
  gym: true,
  swimming_pool: true,
  sauna_and_steam: true,
  generator: true,
    )

puts "KK Villas created"

puts "creating Metak Box"

metalbox = Development.create!(
  name: "Metal Box",
  address: "Oyster Bay Road",
  gym: true,
  swimming_pool: true,
  sauna_and_steam: true,
  generator: true,
    )

puts "Metal Box created"

puts "creating Selander Bridge"

sbridge = Development.create!(
  name: "Sea View Apartments",
  address: "Kimara Road",
  gym: true,
  swimming_pool: true,
  sauna_and_steam: true,
  generator: true,
    )

puts "Selander Bridge created"


puts "creating Palm"

palm = Development.create!(
  name: "Palm Residence",
  address: "State House",
  gym: true,
  swimming_pool: true,
  sauna_and_steam: true,
  generator: true,
    )

puts "Selander Bridge created"


