class PagesController < ApplicationController
  def index
    @banners = Banner.active(5)
    @zombies = Zombie.active(5)
  end
end
