namespace :stocks do
  desc "tasks to help with stock creation"
  # Example of how to call it
  # rake stocks:add_stock[JWN,Nordstrom]
  # rake stocks:add_stock['JWN','Nordstrom']
  # rake stocks:add_stock["JWN","Nordstrom"]
  task :add_stock, [:symbol, :name] => [:environment] do |t, args|
    puts "Creating #{args[:symbol]}, #{args[:name]} in database"
    Company.create(symbol: args[:symbol], name: args[:name])
  end
end
