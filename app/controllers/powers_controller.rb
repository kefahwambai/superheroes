class PowersController < ApplicationController
    def index
        powers = Power.all
        render json: powers
    end

    def show
        powers = Power.find(params[:id])
        render json: powers
    end

    def create
        powers = Power.create(powers_params)
        render json: powers
    end

    def update
        power = Power.find_by(id: params[:id])
        if power.nil?
          render json: { error: "Power not found" }, status: :not_found
        elsif power.update(powers_params)
          render json: power
        else
          render json: { errors: power.errors.full_messages }, status: :unprocessable_entity
        end
      end
      
      def destroy
        power = Power.find(params[:id])
        if power.destroy
          render json: { message: "Power deleted successfully" }
        else
          render json: { error: "Failed to delete power" }, status: :unprocessable_entity
        end
      end
      
    

    private

    def powers_params
        params.require(:power).permit(:name, :description)
    end
end
