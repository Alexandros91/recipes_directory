require_relative './recipe'

class RecipeRepository
  def all
    sql = 'SELECT id, name, cooking_time, rating FROM recipes;'
    result_set = DatabaseConnection.exec_params(sql, [])

    recipes = []

    result_set.each do |record|
      recipe = Recipe.new
      recipe.id = record['id'].to_i
      recipe.name = record['name']
      recipe.cooking_time = record['cooking_time'].to_i
      recipe.rating = record['rating'].to_i

      recipes << recipe
    end

    return recipes
  end

  def find(id)
    sql = 'SELECT id, name, cooking_time, rating FROM recipes WHERE id = $1;'
    sql_params = [id]

    result_set = DatabaseConnection.exec_params(sql, sql_params)

    record = result_set[0]

    recipe = Recipe.new
    recipe.id = record['id'].to_i
    recipe.name = record['name']
    recipe.cooking_time = record['cooking_time'].to_i
    recipe.rating = record['rating'].to_i

    return recipe
  end

  # Add more methods below for each operation you'd like to implement.

  # def create(recipe)
  # end

  # def update(recipe)
  # end

  # def delete(recipe)
  # end
end