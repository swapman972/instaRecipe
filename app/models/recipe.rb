class Recipe < ApplicationRecord
    has_many :posts 
    has_many :users, through: :posts 
    validates :name, uniqueness: true
    belongs_to :cuisine
end
