module Api
  module V1
    class TodosController < ApplicationController
        def index
          company = Company.find(params[:company_id]);
          todos = company.todos;
          render json: todos
        end
    end
  end
end
