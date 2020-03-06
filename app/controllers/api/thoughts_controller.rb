module Api
  class ThoughtsController < ApplicationController
      def index
        thoughts = Thought.all.order(created_at: :DESC)
        render json: thoughts
      end

      def show
        thought = Thought.find(params[:id])
        render json: thought
      end

      def update
        thought = Thought.find(params[:id])
        thought.update_attributes(thought_params)
        render json: {}, status: 200
      end

      def create
        stock = Company.find_by_symbol(params[:ticker])
        stock.thoughts.create(thought_params)
        render json: {}, status: 200
      end

      def destroy
        thought = Thought.find(params[:id])
        thought.destroy
      end

      private
      def thought_params
        params.require(:thought).permit(:notes, :title)
      end
  end
end