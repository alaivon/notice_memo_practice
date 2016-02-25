# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Creating category"
category_name = %w[會議 餐廳訂位 預約看診 其他工作]
category_name.each do |name|

category = Category.new
category.name = name
category.save
end
puts "Completed"