class RestaurantsController < ApplicationController

    def index
        restaurants = Restaurant.all 
        render json: RestaurantSerializer.new(restaurants)
    end

end
