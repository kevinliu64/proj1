class PokemonsController < ApplicationController
  def capture
    p = Pokemon.find(params[:id])
    p.trainer = current_trainer
    p.save
    redirect_to root_path
  end

  def damage
    p = Pokemon.find(params[:id])
    p.health -= 10
    p.save
    attacker = Pokemon.find(params[:attacker_id])
    attacker.level += 1
    attacker.save
    redirect_to trainer_path(p.trainer_id)
  end

  def new
    @pokemon = Pokemon.new
  end

  def heal
    p = Pokemon.find(params[:id])
    p.health += 10
    p.save
    redirect_to trainer_path(p.trainer_id)
  end

  def create
    p = Pokemon.new(pokemon_params)
    p.health = 100
    p.level = 1
    p.trainer = current_trainer
    if p.save
      redirect_to trainer_path(p.trainer)
    else
      flash[:error] = p.errors.full_messages.to_sentence
      redirect_to pokemons_new_path
    end
  end

  private
  def pokemon_params
    params.require(:pokemon).permit(:name)
  end
end
