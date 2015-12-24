puts "Destroying old data"
User.destroy_all
Project.destroy_all

@image_categories = %w( animals arch nature people tech )
@image_sizes = %w( 500 550 400 450 425 525 475 )

puts "Creating user"
User.create(email: 'edenhibbert@gmail.com', password: 'Comfort!23')

puts "Creating projects"
10.times do
  a = Project.new
  a.name = FFaker::Lorem.phrase
  a.details = FFaker::Lorem.paragraph
  a.date = Date.today-(100*rand())
  5.times do
    b = a.images.new
    b.file = open("https://placeimg.com/#{@image_sizes.sample}/#{@image_sizes.sample}/#{@image_categories.sample}")
    b.caption = FFaker::Lorem.phrase
    b.save
    b.featured = 'true' if (b.id % 5 == 0)
    b.save
  end
  a.save
end
