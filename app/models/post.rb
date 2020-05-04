class Post < ApplicationRecord
    belongs_to :user 
    belongs_to :recipe, optional: true  
    belongs_to :new_recipe, optional: true 
end
