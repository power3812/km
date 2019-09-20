class PagesController < ApplicationController
  def index
  end

  def api
    @color=Color.new(
      color_name: "red",
      color_image: "fire"
    )
    @color.save
  end
end
