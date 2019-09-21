module Api
    class ShopController < ApplicationController
      protect_from_forgery
      def index
        @jan=params[:jan]
        @clothes=Clothe.find_by(jan: @jan)
        if @clothes
          render json: @clothes
        end
      end

      def create
        clothe=Clothe.new
        clothe.name=params[:name]
        clothe.jan=params[:jan]
        clothe.r=params[:r]
        clothe.g=params[:g]
        clothe.b=params[:b]
        if clothe.save
          render json: clothe
        end
      end
    end
  end