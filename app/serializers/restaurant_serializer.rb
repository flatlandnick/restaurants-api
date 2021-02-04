class RestaurantSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :price, :rating, :description
  belongs_to :cuisine
end
