class ZebraController < ApplicationController
  def giraffe
    moves = ["rock", "paper", "scissors"]
    @comp_move = moves.sample

    if @comp_move == "rock"
      @outcome = "tied"
    elsif @comp_move == "paper"
      @outcome = "lost"
    elsif @comp_move == "scissors"
      @outcome = "won"
    end

    render({:template => "game_templates/play_rock"})
  end

  def elephant
    moves = ["rock", "paper", "scissors"]
    @comp_move = moves.sample

    if @comp_move == "paper"
      @outcome = "tied"
    elsif @comp_move == "rock"
      @outcome = "won"
    elsif @comp_move == "scissors"
      @outcome = "lost"
    end

    render({:template => "game_templates/play_paper"})
  end

  def bird
    moves = ["rock", "paper", "scissors"]
    @comp_move = moves.sample

    if @comp_move == "scissors"
      @outcome = "tied"
    elsif @comp_move == "paper"
      @outcome = "won"
    elsif @comp_move == "rock"
      @outcome = "lost"
    end

    render({:template => "game_templates/play_scissors"})
  end

  def monkey

  render({:template => "rules_template/rules"})
  end
end
