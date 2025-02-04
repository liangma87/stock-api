module Api
  class DiariesController < ApplicationController
      def index
        diaries = Diary.all.order(updated_at: :DESC)
        render json: diaries
      end

      def show
        stock = Company.find(params[:id])
        diaries = stock.diaries
        render json: diaries
      end

      def update
        diary = Diary.find(params[:id])
        diary.update_attributes(diary_params)
        render json: {}, status: 200
      end

      def create
        stock = Company.find_by_symbol(params[:ticker])
        stock.diaries.create(diary_params)
        render json: {}, status: 200
      end

      def destroy
        diary = Diary.find(params[:id])
        diary.destroy
      end

      private
      def diary_params
        params.require(:diary).permit(:notes, :ticker)
      end
  end
end