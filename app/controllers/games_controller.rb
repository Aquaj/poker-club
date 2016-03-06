class GamesController < ApplicationController
  def index
    @games = Games.all
  end

  def show
    @game = Game.find(params[:id])
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    if @game.save
      redirect_to @game
    else
      render :new
    end
  end

  def destroy
    @game = Game.find(params[:id])
    @gmae.destroy
  end
end
