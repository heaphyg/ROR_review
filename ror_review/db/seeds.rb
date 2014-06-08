require 'faker'
# users

User.create(name: "Clark Kent", email: "clark@kent.com", password: "password", password_confirmation: "password")
User.create(name: "Homer Simpson", email: "homer@simpson.com", password: "password", password_confirmation: "password")
User.create(name: "Steve Jobs", email: "steve@jobs.com", password: "password", password_confirmation: "password")
User.create(name: "Randy Newman", email: "randy@newman.com", password: "password", password_confirmation: "password")

# posts

50.times do
  name = Faker::Name.name
  content = Faker::Lorem.paragraph
  num = rand(1..4)
  Post.create(name: name, content: content, user_id: num)
end
