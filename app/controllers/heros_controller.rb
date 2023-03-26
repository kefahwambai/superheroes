class HerosController < ApplicationController
    def index
        heros = Hero.all
        render json: heros
    end

    def show
        hero = Hero.find(params[:id])
        render json: hero, include: :powers
    end
      

    def create 
        heros = Hero.create(hero_params)
        render json: heros
    end

    def update
        hero = Hero.find(params[:id])
        if hero.update(hero_params)
            render json: hero
        else
            render json: { error: hero.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def destroy
        heros = Hero.find(params[:id])
        if hero.destroy
            render json: { message: "Hero deleted successfully" }
        else
            render json: { error: "Failed to delete Hero" }, status: :unprocessable_entity
        end
    end

    private

    def hero_params
        params.require(:hero).permit(:name, :super_name)
    end


end
