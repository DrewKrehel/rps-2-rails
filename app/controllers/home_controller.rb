class HomeController < ApplicationController
  def about
    render ({ :template => "game_templates/homepage"})
  end
end
