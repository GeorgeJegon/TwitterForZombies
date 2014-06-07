class PagesController < ApplicationController
  def index
    @banners = Banner.list_home(5)
    @zombies = Zombie.active(5)
  end
end
