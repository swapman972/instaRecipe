class Post < ApplicationRecord
    belongs_to :user 
    belongs_to :recipe

    def post_react
        Reaction.all.select do |re| 
            re.post_id == self.id 
        end
    end 

    def total_likes 
        post_react.map do |post|
            post.like 
        end.sum 
    end 

    def total_dislike 
        post_react.map do |post|
            post.dislike 
        end.sum 
    end 

    def total_love 
        post_react.map do |post|
            post.love 
        end.sum 
    end 

    def total_disgust 
        post_react.map do |post|
            post.disgust 
        end.sum 
    end 
end
