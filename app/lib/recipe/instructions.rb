class Recipe
  class Instructions
    attr_reader :instructions

    def self.generate(data)
      instructions = data.split("\r\n").map{ |line| line&.strip }.select(&:present?)
      new(instructions)
    end

    def initialize(instructions)
      @instructions = instructions
    end

    def list
      instructions
    end
  end
end
