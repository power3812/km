class ClothesController < ApplicationController
  def index
    @jan=JanHistory.last
    if @jan
      @clothes=Clothe.find_by(jan: @jan.jan)
      @color=nil
      if @clothes
        @color=Color.find_by(id: @clothes.color_id)
      end
    end
    respond_to do |format|
      format.html
    end
  end

  def create
    jan=JanHistory.new
    jan.jan=params[:jan]
    jan.save
    redirect_back(fallback_location: "/clothes/index")
  end
end
