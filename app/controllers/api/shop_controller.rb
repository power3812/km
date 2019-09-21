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
      colors=Color.all
      min=1000000000
      r=0
      g=0
      b=0
      colors.each do|t|
        cons=(t.r-clothe.r)**2+(t.g-clothe.g)**2+(t.b-clothe.b)**2
        if min>=cons
          min=cons
          r=t.r
          g=t.g
          b=t.b
        end
      end
      color=Color.find_by(r:r,g:g,b:b)
      clothe.color_id=color.id
      if clothe.save
        render json: clothe
      end
    end
  end
end