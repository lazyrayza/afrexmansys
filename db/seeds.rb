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

