class Recipe
  class Ingredients
    attr_reader :ingredients

    def self.generate(data)
      ingredients = []
      ingredient_key = 'strIngredient'
      measurement_key = 'strMeasure'

      (1..20).each do |n|
        break unless data["#{ingredient_key}#{n}"].present?
        name = data["#{ingredient_key}#{n}"].strip
        measurement = data["#{measurement_key}#{n}"]&.strip || ""
        ingredients << Recipe::Ingredient.new(name: name, measurement: measurement)
      end

      new(ingredients)
    end

    def initialize(ingredients)
      @ingredients = ingredients
    end

    def list
      ingredients.map {|ingredient| "#{ingredient.measurement} #{ingredient.name}".strip}
    end
  end
end
