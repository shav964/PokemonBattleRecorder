# app/controllers/pokemons_controller.rb
class PokemonsController < ApplicationController
  def increment_victories
    @pokemon = Pokemon.find(params[:id])
    @pokemon.increment_victories
    redirect_to @pokemon
  end
end