class Recipe
  class Ingredient
    attr_reader :name, :measurement

    def initialize(name:, measurement:)
      @name = name
      @measurement = measurement
    end
  end
end
