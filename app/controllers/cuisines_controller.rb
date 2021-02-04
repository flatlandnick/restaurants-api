class CuisinesController < ApplicationController

    def index
        cuisines = Cuisine.all 
        # render json: cuisines.to_json(include: {restaurants: {except: [:id, :created_at, :updated_at]}}, only: [:name, :id])
        # render json: cuisines.to_json(only: [:name, :id])
        render json: CuisineSerializer.new(cuisines, {include: [:restaurants]})
    end

    def create
        cuisine = Cuisine.new(cuisine_params)
        if cuisine.save
            render json: CuisineSerializer.new(cuisine)
        else
            render json: {errors: cuisine.errors}
        end
    end

    def show
    end

    def destroy
        cuisine = Cuisine.find_by(id: params[:id].to_i)
        cuisine.destroy
        render json: {message: "The #{cuisine.name} cuisine has been deleted"}
        # byebug
    end

    private
    
    def cuisine_params
        params.require(:cuisine).permit(:name)
    end
end
