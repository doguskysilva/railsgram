#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
  name = Faker::Name.name_with_middle
  print("#{name} \n")
  User.create!(
    name: name,
    email: Faker::Internet.email,
    username: name.partition(' ').first.downcase,
    password: 'password'
  )
end
