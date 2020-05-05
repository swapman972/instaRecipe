class User < ApplicationRecord
    has_many :posts 
    has_many :new_recipe 
    has_many :recipes, through: :posts 
  

end
