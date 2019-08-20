module Api
  module V1
    class OhlcPricesController < ApplicationController
        def index
        end

        def show
          company = Company.find_by_symbol(params[:ticker]);
          stocks = company.ohlc_prices.last(params[:days]).reverse;
          render json: stocks
          # TODO error cases here
        end

        def edit
          
        end
    end
  end
end