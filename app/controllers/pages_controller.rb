class PagesController < ApplicationController
  def index
  end

  def api
    @history=History.last
    if @history
      #定義に基づいた条件式
      @id=
      @color=Color.find_by(id: @id)
      redirect_to("/pages/index")
    end
  end
end
