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
        endbug
    end

    def show
    end

    private

    def cuisine_params
        params.require(:cuisine).permit(:name)
    end
end
