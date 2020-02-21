# TODOS
# 1, do I need the V1 versioning? seems redundant...
# 2, need more error checking, to add in future iteration (for example, stock not exist)
# 3, validations are also needed, to add in future iteration

module Api
  module V1
    class TodosController < ApplicationController
        def index
          todos = Todo.all.order(:completion_date)
          render json: todos
        end

        def show
          stock = Company.find_by_symbol(params[:ticker])
          todos = stock.todos
          render json: todos
          # TODO error cases
        end

        def update
          # Date format y/m/d
          todo = Todo.find(params[:id])
          todo.update_attributes(todo_params)
          render json: {}, status: 200
        end

        def create
          stock = Company.find_by_symbol(params[:ticker])
          stock.todos.create(todo_params)
          render json: {}, status: 200
        end

        def destroy
          todo = Todo.find(params[:id])
          todo.destroy
        end


        private
        def todo_params
          params.require(:todo).permit(:completion_date, :notes)
        end
    end
  end
end
