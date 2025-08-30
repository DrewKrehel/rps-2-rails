class MovesController < AppllicationController
  def play
    @moves = ["rock", "paper", "scissors"]
    @comp_moves = @moves.sample
  
    @player_moves = params.fetch("hand")

    render ({ :template => "game_templates/flexible.erb"})
  end
end
