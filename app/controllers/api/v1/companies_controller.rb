module Api
  module V1
    class CompaniesController < ApplicationController
      #before_action :authenticate_user!
      def index
        companies = Company.all;
        #render json: companies
        data = [] # hacked, may not be the right function
        companies.each do |company|
          tmp = {
            name: company.name,
            symbol: company.symbol,
            id: company.id,
            todos: company.todos.length
          }
          data.push(tmp)
        end
        render json: data
      end

    end
  end
end
