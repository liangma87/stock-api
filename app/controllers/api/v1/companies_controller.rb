module Api
  module V1
    class CompaniesController < ApplicationController
      #before_action :authenticate_user!
      def index
        companies = Company.all;
        render json: companies
      end

    end
  end
end
