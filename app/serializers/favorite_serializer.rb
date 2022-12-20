class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :recipe_name, :recipe_steps, :image_url
  
end
