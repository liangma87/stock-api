module Api
  module V1
    class TodosController < ApplicationController
        def index
          company = Company.find(2);
          todos = company.todos;
          render json: todos
        end
    end
  end
end
