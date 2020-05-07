class User < ApplicationRecord
    has_many :posts, dependent: :destroy 
    has_many :recipes, through: :posts   
    has_many :reactions
    validates :name, uniqueness: true
end
