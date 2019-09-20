class PagesController < ApplicationController
  def index
    @history=History.last
    if @history
      #定義に基づいた条件式
      @id=
      @color=Color.find_by(id: @id)
    end
  end

  def api
    history=History.new
    history.r=params[:r]
    history.g=params[:g]
    history.b=params[:b]
    history.save
  end
end
