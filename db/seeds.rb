# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#OhlcPrice.create(open: 38, high: 40, low: 36, close: 39)
chart = IEX::Resources::Chart.get('ESV', '1m')

OhlcPrice.create(open: chart[1].open, high: chart[1].high, low: chart[1].low,
  close: chart[1].close, volume: chart[1].volume, date: chart[1].date)

# remove the unajusted_* columns
 #OhlcPrice.create(open: chart[0].open, high: chart[0].high, low: chart[0].low,
    #                close: chart[0].close, volume: chart[0].volume, date: chart[0].date)