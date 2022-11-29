class Favorite < ApplicationRecord
    belongs_to :user
    has_many :recipe, through: :user
end
