class PagesController < ApplicationController
  def index
    @history=History.last
    @color=nil
    if @history
      #定義に基づいた条件式
      @r=@history.r
      @g=@history.g
      @b=@history.b
      @color=Color.find_by(r:@r,g:@g,b:@b)
      respond_to do |format|
        format.html
      end
    end
  end

end
