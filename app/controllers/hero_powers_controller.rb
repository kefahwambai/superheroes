class HeroPowersController < ApplicationController
    def index
        hero_powers = HeroPower.all
        render json: hero_powers
    end

    def show
        hero_powers = HeroPower.find(params[:id])
        render json: hero_powers
    end

    def create
        hero_powers = HeroPower.create(heropower_params)
        render json: hero_powers
    end

    def update
        hero_powers = HeroPower.find(params[:id])
        if hero_powers.update(heropower_params)
            render json: hero_powers
        else
            render json: { error: hero_powers.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def delete
        hero_powers = HeroPower.find(params[:id])
        if hero.destroy
            render json:  {message: "HeroPower deleted successfully" }
        else
            render json: { error: "Failed to delete HeroPower" }, status: :unprocessable_entity
        end
    end

    private

    def heropower_params
        params.require(:hero_power).permit(:strength, :hero_id, :power_id)
    end
end
