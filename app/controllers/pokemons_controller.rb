# app/controllers/pokemons_controller.rb

class PokemonsController < ApplicationController
  def increment_victories
    @pokemon = Pokemon.find(params[:id])
    @pokemon.increment_victories
    redirect_to pokemons_path(victories: @pokemon.victories) # 最新の勝利数をパラメータとして含める
  end

  def reset_victories
    @pokemon = Pokemon.find(params[:id])
    @pokemon.update(victories: 0)
    redirect_to pokemons_path(victories: @pokemon.victories) # 最新の勝利数をパラメータとして含める
  end

  def index
    @pokemons = Pokemon.all
  end

  def show
    @pokemon = Pokemon.find(params[:id])
  end
end
