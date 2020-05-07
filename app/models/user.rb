class User < ApplicationRecord
    has_many :posts, dependent: :destroy
    has_many :recipes, through: :posts   

    validates :email, uniqueness: true

    has_secure_password
end
