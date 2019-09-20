class PagesController < ApplicationController
  def index
  end

  def api
    @color=Color.new(
      name: "red",
      image: "fire"
    )
    @color.save
  end
end
