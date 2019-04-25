namespace :iex_data do
  task :update_ohlc_prices, [:option] => [:environment] do |t, args|
    desc "tasks to update stock db"
    # Minimum is 1 month's data

    option = args.option
    if option != '1m' and option != '5y'
      puts "#{option}: unsupported option type! bye-bye!"
      next
    end

    companies = Company.all()
    companies.each do |company|
        puts "updating for #{company.symbol}"
        chart = IEX::Resources::Chart.get(company.symbol, option)
        chart.each do |data|
          # Q: can db itself prevent dup being commited assuming date is unique?
          company.ohlc_prices.create(open: data.open, high: data.high, low: data.low,
                              close: data.close, volume: data.volume, date: data.date)
      end
    end
    puts "ticker_price update is done!"
  end

  # Q: What is t?
  task :update_company_info, [:ticker, :option] => [:environment] do |t, args|
    desc "tasks to update company info"

    ticker = args.ticker
    option = args.option
    if option != 'create'
      puts "#{option}: unsupported option type! bye-bye!"
      next
    end
    company = IEX::Resources::Company.get(ticker)
    # TODO check error for company before commit to db
    # TODO make sure company.symbol isn't in the db # can db validation do this?
    Company.create(symbol: company.symbol, name: company.company_name,
                  exchange: company.exchange, industry: company.industry,
                  website: company.website, description: company.description,
                  issueType: company.issue_type, sector: company.sector);
  end

  # Q: can we copy the data to SQlite db by calling a task?
end
