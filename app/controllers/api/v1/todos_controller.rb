module Api
  module V1
    class TodosController < ApplicationController
        def index
          todos = Todo.all.order(:completion_date)
          render json: todos
        end

        def show
          company = Company.find_by_symbol(params[:ticker])
          todos = company.todos
          render json: todos
          # TODO error cases
        end

        def update
          # Date format y/m/d
          todo = Todo.find(params[:id])
          todo.update_attributes(todo_params)
          render json: {}, status: 200
        end

        private
        def todo_params
          params.require(:todo).permit(:completion_date, :notes)
        end
    end
  end
end
