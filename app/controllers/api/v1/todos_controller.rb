module Api
  module V1
    class TodosController < ApplicationController
        def index
          todos = Todo.all.order(:completion_date);
          render json: todos
        end

        def show
          company = Company.find_by_symbol(params[:ticker]);
          todos = company.todos
          render json: todos
          # TODO error cases
        end
    end
  end
end
