class PagesController < ApplicationController
  def index
    @history=History.last
    @color=nil
    @colors=Color.all
    if @history
      min=1000000000
      @colors.each do|t|
        cons=(t.r-@history.r)**2+(t.g-@history.g)**2+(t.b-@history.b)**2
        if min>=cons
          min=cons
          @r=t.r
          @g=t.g
          @b=t.b
        end
      end
      #定義に基づいた条件式
      @color=Color.find_by(r:@r,g:@g,b:@b)
    end
    respond_to do |format|
      format.html
    end
  end

  def create
    redirect_back(fallback_location: "/pages/index")
  end
end
