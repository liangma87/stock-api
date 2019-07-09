module Api
  module V1
    class OhlcPricesController < ApplicationController
        def index
          company = Company.find(params[:company_id]);
          stocks = company.ohlc_prices.last(100).reverse;
          render json: stocks
        end

        def show
          
        end
    end
  end
end