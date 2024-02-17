require_relative 'lib/database_connection'
require_relative 'lib/recipe_repository'

DatabaseConnection.connect('recipes_directory')

recipe_repository = RecipeRepository.new

# recipe_repository.all.each do |recipe|
#   p "#{recipe.id} - #{recipe.name} - #{recipe.cooking_time} - #{recipe.rating}"
# end

# recipe = recipe_repository.find(1)
# puts "#{recipe.id} - #{recipe.name} - #{recipe.cooking_time} - #{recipe.rating}"

# recipe = recipe_repository.find(2)
# puts "#{recipe.id} - #{recipe.name} - #{recipe.cooking_time} - #{recipe.rating}"

# recipe = recipe_repository.find(3)
# puts "#{recipe.id} - #{recipe.name} - #{recipe.cooking_time} - #{recipe.rating}"

# recipe = recipe_repository.find(4)
# puts "#{recipe.id} - #{recipe.name} - #{recipe.cooking_time} - #{recipe.rating}"