class RestaurantSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :price, :rating, :description, :cuisine_id

end
