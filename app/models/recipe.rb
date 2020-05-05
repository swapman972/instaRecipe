class Recipe < ApplicationRecord
    has_many :posts 
    has_many :users, through: :pots 
    validates :name, uniqueness: true
end
