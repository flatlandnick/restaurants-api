class CuisinesController < ApplicationController

    def index
        cuisines = Cuisine.all 
        # render json: cuisines.to_json(include: {restaurants: {except: [:id, :created_at, :updated_at]}}, only: [:name, :id])
        # render json: cuisines.to_json(only: [:name, :id])
        render json: CuisineSerializer.new(cuisines, {include: [:restaurants]})
    end

    def show
    end
end
