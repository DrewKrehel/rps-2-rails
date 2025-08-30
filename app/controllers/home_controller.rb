class HomeController < AppllicationController
  def about
    render ({ :template => "game_templates/homepage.erb"})
  end
end
