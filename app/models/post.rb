class Post < ApplicationRecord
    belongs_to :user 
    belongs_to :recipe
    has_many :reactions
    validates :rating, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }

    def post_react
        Reaction.all.select do |re| 
            re.post_id == self.id 
        end
    end 

end
