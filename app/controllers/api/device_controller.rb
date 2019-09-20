module Api
  class DeviceController < ApplicationController
    protect_from_forgery
    def index
      history=History.new
      history.r=params[:r]
      history.g=params[:g]
      history.b=params[:b]
      if history.save
        render json: history
      end
    end
  
    def create
      history=History.new
      history.r=params[:r]
      history.g=params[:g]
      history.b=params[:b]
      if history.save
        render json: history
      end
    end
  end
end