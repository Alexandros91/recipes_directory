require 'recipe_repository'

RSpec.describe RecipeRepository do

  def reset_recipes_table
    seed_sql = File.read('seeds/recipes.sql')
    connection = PG.connect({ host: '127.0.0.1', dbname: 'recipes_directory_test' })
    connection.exec(seed_sql)
  end

  before(:each) do 
    reset_recipes_table
  end
  
  describe '#all' do
    it 'returns all recipe objects' do
      repo = RecipeRepository.new

      recipes = repo.all

      expect(recipes.length).to eq 3

      expect(recipes[0].id).to eq 1
      expect(recipes[0].name).to eq 'Fried Eggs'
      expect(recipes[0].cooking_time).to eq '10'
      expect(recipes[0].rating).to eq '3'

      expect(recipes[1].id).to eq 2
      expect(recipes[1].name).to eq 'Pad Thai'
      expect(recipes[1].cooking_time).to eq '40'
      expect(recipes[1].rating).to eq '4'

      expect(recipes[2].id).to eq 3
      expect(recipes[2].name).to eq 'Spaghetti Bolognese'
      expect(recipes[2].cooking_time).to eq '60'
      expect(recipes[2].rating).to eq '4'
    end
  end
end