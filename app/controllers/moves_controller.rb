class MovesController < AppllicationController
  def play
    @moves = ["rock", "paper", "scissors"]
    @comp_moves = @moves.sample
  
    @player_moves = params.fetch("hand")

    if @comp_moves == @player_moves
      @outcome = "tied"
    elsif @comp_moves == "rock" && @player_moves == "scissors"
      @outcome = "lost"
    elsif @comp_moves == "paper" && @player_moves == "rock"
      @outcome = "lost"
    elsif @comp_moves == "scissors" && @player_moves == "paper"
      @outcome = "lost"
    else
      @outcome = "won"
    end

    render ({ :template => "game_templates/flexible.erb"})
  end
end
