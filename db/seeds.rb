# Seed data for projects
project_a = Project.create(name: 'Project A')
project_b = Project.create(name: 'Project B')

# Seed data for Supplier A's progress
(1..10).each do |i|
  project_a.project_progresses.create(
    supplier: 'Supplier A',
    task: "Task #{i}",
    progress: rand(0..100), # Random progress between 0% to 100%
    estimated_completion: Date.today + rand(10).days # Random estimated completion date within next 10 days
  )
end

# Seed data for Supplier A's progress
(1..10).each do |i|
  project_a.project_progresses.create(
    supplier: 'Supplier B',
    task: "Task #{i}",
    progress: rand(0..100), # Random progress between 0% to 100%
    estimated_completion: Date.today + rand(10).days # Random estimated completion date within next 10 days
  )
end

# Seed data for Supplier B's progress
(1..10).each do |i|
  project_b.project_progresses.create(
    supplier: 'Supplier C',
    task: "Task #{i}",
    progress: rand(0..100), # Random progress between 0% to 100%
    estimated_completion: Date.today + rand(10).days # Random estimated completion date within next 10 days
  )
end

# Seed data for Supplier B's progress
(1..10).each do |i|
  project_b.project_progresses.create(
    supplier: 'Supplier D',
    task: "Task #{i}",
    progress: rand(0..100), # Random progress between 0% to 100%
    estimated_completion: Date.today + rand(10).days # Random estimated completion date within next 10 days
  )
end

puts "Seed Completed!"
