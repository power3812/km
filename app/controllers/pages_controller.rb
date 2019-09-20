class PagesController < ApplicationController
  def index
    @history=History.last
    @color=nil
    if @history
      #定義に基づいた条件式
      @id=@history.id
      @color=Color.find_by(id: @id)
      respond_to do |format|
        format.html
      end
    end
  end
end
