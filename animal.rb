require './remover.rb'
require './foods.rb'

class Animal
    def initialize(name = "Unknown", number_of_legs,type)
        @id = rand(1000)
        @name = name
        @number_of_legs = number_of_legs
        @type = type
        @liked_food = NoFood.new()
    end

    attr_reader :id
    attr_reader :type
    attr_accessor :name
    attr_reader :number_of_legs

    def speak
        "grrrr"
    end

    def remove_leg
        remover = Remover.new()
        @number_of_legs = remover.decrease(@number_of_legs)
      end

      def likes_food?(food)
        @liked_food.is_liked?(food)
      end
end