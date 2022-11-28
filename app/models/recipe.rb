class Recipe < ApplicationRecord
    belongs_to :category
    belongs_to :user
    belongs_to :cuisine
    has_many :favorites 
    
end
