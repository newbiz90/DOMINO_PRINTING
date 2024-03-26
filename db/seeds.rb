# db/seeds.rb

# Seed data for Supplier A
(1..10).each do |i|
  ProjectProgress.create(
    supplier: 'Supplier A',
    task: "Task #{i}",
    progress: "#{rand(100)}%", # Random progress between 0% to 100%
    estimated_completion: Date.today + rand(10).days # Random estimated completion date within next 10 days
  )
end

# Seed data for Supplier B
(1..10).each do |i|
  ProjectProgress.create(
    supplier: 'Supplier B',
    task: "Task #{i}",
    progress: "#{rand(100)}%", # Random progress between 0% to 100%
    estimated_completion: Date.today + rand(10).days # Random estimated completion date within next 10 days
  )
end

# Seed data for Supplier C
(1..10).each do |i|
  ProjectProgress.create(
    supplier: 'Supplier C',
    task: "Task #{i}",
    progress: "#{rand(100)}%", # Random progress between 0% to 100%
    estimated_completion: Date.today + rand(10).days # Random estimated completion date within next 10 days
  )
end
