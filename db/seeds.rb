# db/seeds.rb

# Create an admin user
admin_user = User.create!(
  email: 'admin@example.com',
  role: 1,  # Assign the role as an integer
  password: 'password',
  password_confirmation: 'password',
  created_at: Time.zone.now,
  updated_at: Time.zone.now
)

# Create a regular user
regular_user = User.create!(
  email: 'user@example.com',
  role: 0,  # Assign the role as an integer
  password: 'password',
  password_confirmation: 'password',
  created_at: Time.zone.now,
  updated_at: Time.zone.now
)

puts "Seed data created successfully!"
