class Recipe
  DUMMY_DATA = {
  "meals": [
    {
      "idMeal": "52857",
      "strMeal": "Pumpkin Pie",
      "strDrinkAlternate": nil,
      "strCategory": "Dessert",
      "strArea": "American",
      "strInstructions": "Place the pumpkin in a large saucepan, cover with water and bring to the boil. Cover with a lid and simmer for 15 mins or until tender. Drain pumpkin; let cool.\r\nHeat oven to 180C/160C fan/gas 4. Roll out the pastry on a lightly floured surface and use it to line a 22cm loose-bottomed tart tin. Chill for 15 mins. Line the pastry with baking parchment and baking beans, then bake for 15 mins. Remove the beans and paper, and cook for a further 10 mins until the base is pale golden and biscuity. Remove from the oven and allow to cool slightly.\r\nIncrease oven to 220C/200C fan/gas 7. Push the cooled pumpkin through a sieve into a large bowl. In a separate bowl, combine the sugar, salt, nutmeg and half the cinnamon. Mix in the beaten eggs, melted butter and milk, then add to the pumpkin purée and stir to combine. Pour into the tart shell and cook for 10 mins, then reduce the temperature to 180C/160C fan/gas 4. Continue to bake for 35-40 mins until the filling has just set.\r\nLeave to cool, then remove the pie from the tin. Mix the remaining cinnamon with the icing sugar and dust over the pie. Serve chilled.",
      "strMealThumb": "https://www.themealdb.com/images/media/meals/usuqtp1511385394.jpg",
      "strTags": "Halloween,Pie,Desert",
      "strYoutube": "https://www.youtube.com/watch?v=hpapqEeb36k",
      "strIngredient1": "Pumpkin",
      "strIngredient2": "Shortcrust Pastry",
      "strIngredient3": "Plain Flour",
      "strIngredient4": "Caster Sugar",
      "strIngredient5": "Salt",
      "strIngredient6": "Nutmeg",
      "strIngredient7": "Cinnamon",
      "strIngredient8": "Eggs",
      "strIngredient9": "Butter",
      "strIngredient10": "Milk",
      "strIngredient11": "Icing Sugar",
      "strIngredient12": "",
      "strIngredient13": "",
      "strIngredient14": "",
      "strIngredient15": "",
      "strIngredient16": "",
      "strIngredient17": "",
      "strIngredient18": "",
      "strIngredient19": "",
      "strIngredient20": "",
      "strMeasure1": "750g",
      "strMeasure2": "350g",
      "strMeasure3": "Dusting",
      "strMeasure4": "140g",
      "strMeasure5": "½ tsp",
      "strMeasure6": "½ tsp",
      "strMeasure7": "1 tsp ",
      "strMeasure8": "2 Beaten ",
      "strMeasure9": "25g",
      "strMeasure10": "175g",
      "strMeasure11": "1 tblsp ",
      "strMeasure12": "",
      "strMeasure13": "",
      "strMeasure14": "",
      "strMeasure15": "",
      "strMeasure16": "",
      "strMeasure17": "",
      "strMeasure18": "",
      "strMeasure19": "",
      "strMeasure20": "",
      "strSource": "https://www.bbcgoodfood.com/recipes/1742633/pumpkin-pie",
      "dateModified": nil
    }]
  }.deep_stringify_keys

  attr_reader :title, :ingredients, :instructions

  def self.generate(data)
    data = data['meals'].first
    new(
      title: data['strMeal'],
      ingredients: Recipe::Ingredients.generate(data),
      instructions: Recipe::Instructions.generate(data['strInstructions'])
    )
  end

  def initialize(title:, ingredients:, instructions:)
    @title = title
    @ingredients = ingredients
    @instructions = instructions
  end

  def as_json
    {
      title: title,
      ingredients: ingredients.list,
      instructions: instructions.list
    }
  end
end
