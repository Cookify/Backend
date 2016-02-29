# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


5.times do |i|
  u = User.create(name: "User #{i}", email: "user#{i}@mailinator.com", password: "cookify")
  p = Provider.create(name: "Provider #{i}", description: "A provider", user_id: u.id)
  Package.create(name: "Package ##{i}", duration: "30", provider_id: p.id)
  ProviderRating.create(rating: "#{i}", comment: "Comment", provider_id: p.id)
end
