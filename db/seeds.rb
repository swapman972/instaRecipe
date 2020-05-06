
User.destroy_all 
Recipe.destroy_all
Ingredient.destroy_all
Post.destroy_all
RecipeIngredient.destroy_all
Reaction.destroy_all
Cuisine.destroy_all

<<<<<<< HEAD
100.times do 
    User.create(name:Faker::Name.name , age: rand(10..90), email: Faker::Internet.email, location: Faker::Address.state, picture: Faker::Avatar.image )
end 

300.times do
    Recipe.create(name: Faker::Food.dish, instructions:Faker::Food.description)
end 

200.times do 
    Ingredient.create(name: Faker::Food.ingredient)
end 
=======
5.times do 
    response = RestClient.get('https://randomuser.me/api/')
    data = JSON.parse(response)
    User.create(name:data["results"][0]["name"]["first"] , age: data["results"][0]["dob"]["age"], email: data["results"][0]["email"], location: data["results"][0]["location"]["city"], picture: data["results"][0]["picture"]["large"] )
end 

5.times do
    response = RestClient.get('https://api.spoonacular.com/recipes/random?apiKey=7b8110c04e0c4c7baa30f6a2d5e1c863')
    data = JSON.parse(response)

    cuisine = Cuisine.create_or_find_by(name: data["recipes"][0]["dishTypes"][0]) 

    recipe = Recipe.create(name: data["recipes"][0]["title"], instructions: data["recipes"][0]["instructions"], cuisine_id: cuisine.id, picture: data["recipes"][0]["image"], prep_time: data["recipes"][0]["readyInMinutes"], serving_size:data["recipes"][0]["servings"])
>>>>>>> tuesday

    count = 0
    while count < data["recipes"][0]["extendedIngredients"].size do
        ingredient = Ingredient.create_or_find_by(name: data["recipes"][0]["extendedIngredients"][count]["name"], picture: data["recipes"][0]["extendedIngredients"][count]["image"])
        RecipeIngredient.create(recipe_id: recipe.id, ingredient_id: ingredient.id) 
        count += 1
    end
end 

<<<<<<< HEAD
400.times do 
    Post.create(description: Faker::Hipster.paragraph(sentence_count: 2), rating: rand(1..5), user_id: User.all.sample.id, recipe_id: Recipe.all.sample.id, picture: Faker::Avatar.image)
end 

800.times do 
    Reaction.create(comment: Faker::Hipster.sentences(number: 1), like: rand(1..100), dislike: rand(1..100), disgust: rand(1..100), love: rand(1..100), post_id: Post.all.sample.id, user_id: User.all.sample.id) 
=======

10.times do 
    Post.create(description: Faker::Hipster.paragraph(sentence_count: 2), rating: rand(1..5), user_id: User.all.sample.id, recipe_id: Recipe.all.sample.id, like: rand(1..20), dislike: rand(1..20), disgust: rand(1..20), love: rand(1..20))
end 

50.times do 
    Reaction.create(comment: Faker::Hipster.sentences(number: 1), post_id: Post.all.sample.id, user_id: User.all.sample.id) 
>>>>>>> tuesday
end 