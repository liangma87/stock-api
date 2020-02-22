# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Stock info may need a liscense now, we can do other things now
jwn = Company.create(symbol: 'JWN', name: 'Nordstrom')
twtr = Company.create(symbol: 'TWTR', name: 'Twitter')
eog = Company.create(symbol: 'EOG', name: 'EOG Resource')
ntdoy = Company.create(symbol: 'NTDOY', name: 'Nintendo')
user = User.create(email: 'admin@gmail.com', password: "admin1234")

jwn.todos.create(notes: "Follow up the news", completion_date: "2017-05-05")
twtr.todos.create(notes: "Check the cash-flow", completion_date: "2018-05-05")
eog.todos.create(notes: "Study the competititors", completion_date: "2019-05-05")
ntdoy.todos.create(notes: "Time to cash out?", completion_date: "2020-05-05")

jwn.save
twtr.save
eog.save
ntdoy.save
user.save

# User.destroy_all, Company.destroy_all, Todo.destroy.all