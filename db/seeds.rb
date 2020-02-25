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
#user = User.create(email: 'admin@gmail.com', password: "admin1234")

jwn.todos.create(notes: "Follow up the news", completion_date: "2017-05-05")
twtr.todos.create(notes: "Check the cash-flow", completion_date: "2018-05-05")
eog.todos.create(notes: "Study the competititors", completion_date: "2019-05-05")
ntdoy.todos.create(notes: "Time to cash out?", completion_date: "2020-05-05")

jwn.diaries.create(title: "Holiday Observation", notes: "My own shopping experiences show that most popular items sold out very quickly this year. For example, Canada goose sold out in full price. In Portland Nordstrom, there aren’t many people in store but seeing lots of pick up items in store")
twtr.diaries.create(title: "IOS ranking", notes: "Twitter in iOS free app ranked #2 today.  This has never happened in the last 3 years. I wonder if this is due to the billboard marketing that they are doing. Twitter is also showing tweet in the NFL TV during the games, what if they are also doing that during NBA games??")
eog.diaries.create(title: "Worries", notes: "Recent geopolitical conflicts have rocketed the oil prices but cooled down quickly as well. OPEC decided to deepen their cut in dec meeting.  EOG has went up to 86 range now. There are multilple incidents have caused the oil price to spike. Is 55 range a bottom? If yes,  then current valuation of EOG is fair with upside")
ntdoy.diaries.create(title: "Shopping Observations", notes: "There are really people who bought switch because of ring fit adventure. 2020 is gonna be a tough year for switch since 2019 has an amazing line up.")

jwn.diaries.create(title: "Holiday Observation", notes: "My own shopping experiences show that most popular items sold out very quickly this year. For example, Canada goose sold out in full price. In Portland Nordstrom, there aren’t many people in store but seeing lots of pick up items in store")
twtr.diaries.create(title: "IOS ranking", notes: "Twitter in iOS free app ranked #2 today.  This has never happened in the last 3 years. I wonder if this is due to the billboard marketing that they are doing. Twitter is also showing tweet in the NFL TV during the games, what if they are also doing that during NBA games??")
eog.diaries.create(title: "Worries", notes: "Recent geopolitical conflicts have rocketed the oil prices but cooled down quickly as well. OPEC decided to deepen their cut in dec meeting.  EOG has went up to 86 range now. There are multilple incidents have caused the oil price to spike. Is 55 range a bottom? If yes,  then current valuation of EOG is fair with upside")
ntdoy.diaries.create(title: "Shopping Observations", notes: "There are really people who bought switch because of ring fit adventure. 2020 is gonna be a tough year for switch since 2019 has an amazing line up.")

jwn.diaries.create(title: "Holiday Observation", notes: "My own shopping experiences show that most popular items sold out very quickly this year. For example, Canada goose sold out in full price. In Portland Nordstrom, there aren’t many people in store but seeing lots of pick up items in store")
twtr.diaries.create(title: "IOS ranking", notes: "Twitter in iOS free app ranked #2 today.  This has never happened in the last 3 years. I wonder if this is due to the billboard marketing that they are doing. Twitter is also showing tweet in the NFL TV during the games, what if they are also doing that during NBA games??")
eog.diaries.create(title: "Worries", notes: "Recent geopolitical conflicts have rocketed the oil prices but cooled down quickly as well. OPEC decided to deepen their cut in dec meeting.  EOG has went up to 86 range now. There are multilple incidents have caused the oil price to spike. Is 55 range a bottom? If yes,  then current valuation of EOG is fair with upside")
ntdoy.diaries.create(title: "Shopping Observations", notes: "There are really people who bought switch because of ring fit adventure. 2020 is gonna be a tough year for switch since 2019 has an amazing line up.")

jwn.diaries.create(title: "Holiday Observation", notes: "My own shopping experiences show that most popular items sold out very quickly this year. For example, Canada goose sold out in full price. In Portland Nordstrom, there aren’t many people in store but seeing lots of pick up items in store")
twtr.diaries.create(title: "IOS ranking", notes: "Twitter in iOS free app ranked #2 today.  This has never happened in the last 3 years. I wonder if this is due to the billboard marketing that they are doing. Twitter is also showing tweet in the NFL TV during the games, what if they are also doing that during NBA games??")
eog.diaries.create(title: "Worries", notes: "Recent geopolitical conflicts have rocketed the oil prices but cooled down quickly as well. OPEC decided to deepen their cut in dec meeting.  EOG has went up to 86 range now. There are multilple incidents have caused the oil price to spike. Is 55 range a bottom? If yes,  then current valuation of EOG is fair with upside")
ntdoy.diaries.create(title: "Shopping Observations", notes: "There are really people who bought switch because of ring fit adventure. 2020 is gonna be a tough year for switch since 2019 has an amazing line up.")

jwn.diaries.create(title: "Holiday Observation", notes: "My own shopping experiences show that most popular items sold out very quickly this year. For example, Canada goose sold out in full price. In Portland Nordstrom, there aren’t many people in store but seeing lots of pick up items in store")
twtr.diaries.create(title: "IOS ranking", notes: "Twitter in iOS free app ranked #2 today.  This has never happened in the last 3 years. I wonder if this is due to the billboard marketing that they are doing. Twitter is also showing tweet in the NFL TV during the games, what if they are also doing that during NBA games??")
eog.diaries.create(title: "Worries", notes: "Recent geopolitical conflicts have rocketed the oil prices but cooled down quickly as well. OPEC decided to deepen their cut in dec meeting.  EOG has went up to 86 range now. There are multilple incidents have caused the oil price to spike. Is 55 range a bottom? If yes,  then current valuation of EOG is fair with upside")
ntdoy.diaries.create(title: "Shopping Observations", notes: "There are really people who bought switch because of ring fit adventure. 2020 is gonna be a tough year for switch since 2019 has an amazing line up.")

jwn.diaries.create(title: "Holiday Observation", notes: "My own shopping experiences show that most popular items sold out very quickly this year. For example, Canada goose sold out in full price. In Portland Nordstrom, there aren’t many people in store but seeing lots of pick up items in store")
twtr.diaries.create(title: "IOS ranking", notes: "Twitter in iOS free app ranked #2 today.  This has never happened in the last 3 years. I wonder if this is due to the billboard marketing that they are doing. Twitter is also showing tweet in the NFL TV during the games, what if they are also doing that during NBA games??")
eog.diaries.create(title: "Worries", notes: "Recent geopolitical conflicts have rocketed the oil prices but cooled down quickly as well. OPEC decided to deepen their cut in dec meeting.  EOG has went up to 86 range now. There are multilple incidents have caused the oil price to spike. Is 55 range a bottom? If yes,  then current valuation of EOG is fair with upside")
ntdoy.diaries.create(title: "Shopping Observations", notes: "There are really people who bought switch because of ring fit adventure. 2020 is gonna be a tough year for switch since 2019 has an amazing line up.")

jwn.diaries.create(title: "Holiday Observation", notes: "My own shopping experiences show that most popular items sold out very quickly this year. For example, Canada goose sold out in full price. In Portland Nordstrom, there aren’t many people in store but seeing lots of pick up items in store")
twtr.diaries.create(title: "IOS ranking", notes: "Twitter in iOS free app ranked #2 today.  This has never happened in the last 3 years. I wonder if this is due to the billboard marketing that they are doing. Twitter is also showing tweet in the NFL TV during the games, what if they are also doing that during NBA games??")
eog.diaries.create(title: "Worries", notes: "Recent geopolitical conflicts have rocketed the oil prices but cooled down quickly as well. OPEC decided to deepen their cut in dec meeting.  EOG has went up to 86 range now. There are multilple incidents have caused the oil price to spike. Is 55 range a bottom? If yes,  then current valuation of EOG is fair with upside")
ntdoy.diaries.create(title: "Shopping Observations", notes: "There are really people who bought switch because of ring fit adventure. 2020 is gonna be a tough year for switch since 2019 has an amazing line up.")

jwn.save
twtr.save
eog.save
ntdoy.save