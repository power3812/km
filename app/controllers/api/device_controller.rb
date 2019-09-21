module Api
  class DeviceController < ApplicationController
    protect_from_forgery
    def index
      history=History.last
      if history
        render json: history
      end
    end
  
    def create
      r=params[:r].to_i
      g=params[:g].to_i
      b=params[:b].to_i
      history=History.new
      history.r=r
      history.g=g
      history.b=b
      history.abs=r*r+g*g+b*b
      if history.save
        render json: history
      end
    end
  end
end