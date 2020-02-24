

jwn = Company.find_by_symbol('JWN')
twtr = Company.find_by_symbol('TWTR')
eog = Company.find_by_symbol('EOG')
ntdoy = Company.find_by_symbol('NTODY')
user = Company.find_by_symbol('JWN')

jwn.diaries.create(notes: "My own shopping experiences show that most popular items sold out very quickly this year. For example, Canada goose sold out in full price. In Portland Nordstrom, there aren’t many people in store but seeing lots of pick up items in store")
twtr.diaries.create(notes: "Twitter in iOS free app ranked #2 today.  This has never happened in the last 3 years. I wonder if this is due to the billboard marketing that they are doing. Twitter is also showing tweet in the NFL TV during the games, what if they are also doing that during NBA games??")
eog.diaries.create(notes: "Recent geopolitical conflicts have rocketed the oil prices but cooled down quickly as well. OPEC decided to deepen their cut in dec meeting.  EOG has went up to 86 range now. There are multilple incidents have caused the oil price to spike. Is 55 range a bottom? If yes,  then current valuation of EOG is fair with upside")
ntdoy.diaries.create(notes: "There are really people who bought switch because of ring fit adventure. 2020 is gonna be a tough year for switch since 2019 has an amazing line up.")

jwn.save
twtr.save
eog.save
ntdoy.save