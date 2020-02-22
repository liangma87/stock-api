module Api
  class TodosController < ApplicationController
      def index
        todos = Todo.all.order(:completion_date)
        render json: todos
      end

      def show
        stock = Company.find_by_symbol(params[:ticker])
        todos = stock.todos
        render json: todos
      end

      def update
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
