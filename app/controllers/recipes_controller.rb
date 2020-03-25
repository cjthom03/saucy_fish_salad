class RecipesController < ApplicationController
  def random
    resp = RestClient.get('https://www.themealdb.com/api/json/v1/1/random.php')
    data = JSON.parse(resp.body)['meals'].first
    recipe = Recipe.generate(data)
    render json: recipe.as_json, status: 200

  rescue => e
    render json: e, status: 422
  end
end
