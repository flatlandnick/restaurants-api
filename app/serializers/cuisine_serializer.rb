class CuisineSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name
  has_many :restaurants
end
