class HomeController < ApplicationController
  def index
    @images = Facade.images
  end
end
