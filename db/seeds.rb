User.destroy_all 
Recipe.destroy_all
Ingredient.destroy_all
Post.destroy_all
RecipeIngredient.destroy_all
Reaction.destroy_all

100.times do 
    User.create(name:Faker::Name.name , age: rand(10..90), email: Faker::Internet.email, location: Faker::Address.state, picture: Faker::Avatar.image )
end 

300.times do
    Recipe.create(name: Faker::Food.dish, instructions:Faker::Food.description)
end 

200.times do 
    Ingredient.create(name: Faker::Food.ingredient)
end 

300.times do 
    RecipeIngredient.create(recipe_id: Recipe.all.sample.id, ingredient_id: Ingredient.all.sample.id)
end 

400.times do 
    Post.create(description: Faker::Hipster.paragraph(sentence_count: 2), rating: rand(1..5), user_id: User.all.sample.id, recipe_id: Recipe.all.sample.id, picture: Faker::Placeholdit.image)
end 

800.times do 
    Reaction.create(comment: Faker::Hipster.sentences(number: 1), like: rand(1..100), dislike: rand(1..100), disgust: rand(1..100), love: rand(1..100), post_id: Post.all.sample.id, user_id: User.all.sample.id) 
end 