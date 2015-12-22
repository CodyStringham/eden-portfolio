User.destroy_all
Project.destroy_all

User.create(email: 'edenhibbert@gmail.com', password: 'Comfort!23')
10.times do |project|
  Project.create(name: 'Project Name', date: Time.now, details: 'Here are some details.')
end
