class HomeController < ApplicationController
  def index
  	@new_anoun = Anouncement.all
  	@past_anoun = Anouncement.all
  end
end
