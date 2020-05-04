class Post < ApplicationRecord
    belongs_to :user 
    belongs_to :recipe, optional: true  
    belongs_to :new_recipe, optional: true 

    def post_react
        Reaction.all.select do |re| 
            re.post_id == self.id 
        end 
    end 
end
