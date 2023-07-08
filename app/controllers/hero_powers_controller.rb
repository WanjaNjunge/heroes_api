# app/controllers/hero_powers_controller.rb
class HeroPowersController < ApplicationController
    def create
      hero = Hero.find_by(id: params[:hero_id])
      power = Power.find_by(id: params[:power_id])
  
      if hero && power
        hero_power = HeroPower.new(hero: hero, power: power, strength: params[:strength])
        if hero_power.save
          render json: hero_with_powers(hero)
        else
          render json: { errors: hero_power.errors.full_messages }, status: :unprocessable_entity
        end
      else
        render json: { errors: ["Hero or Power not found"] }, status: :not_found
      end
    end
  
    private
  
    def hero_with_powers(hero)
      {
        id: hero.id,
        name: hero.name,
        super_name: hero.super_name,
        powers: hero.powers.select(:id, :name, :description)
      }
    end
  end
  