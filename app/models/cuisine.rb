class Cuisine < ApplicationRecord
    has_many :recipes,  dependent: :destroy
    validates :name, uniqueness: true
end
