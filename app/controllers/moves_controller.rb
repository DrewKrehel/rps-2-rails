class MovesController < AppllicationController
  def play
    render ({ :template => "game_templates/rock.erb"})
  end
end
