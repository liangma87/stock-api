module Api
  class CompaniesController < ApplicationController
    #before_action :authenticate_user!

    def index
      companies=Company.all;
      data=companies.map {|company|
              {
                name: company.name,
                symbol: company.symbol,
                id: company.id,
                todos_cnt: company.todos.length
              }}
      render json: data
    end

  end
end
