require './remover.rb'
require './foods.rb'

class Animal
    def initialize(type, number_of_legs, name = "Unknown")
        @id = rand(1000)
        @name = name
        @number_of_legs = number_of_legs
        @type = type
        @liked_food = NoFood.new()
        @visits = []
    end

    attr_reader :id, :liked_food, :visits, :owner
    attr_accessor :name, :number_of_legs, :type

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

      def owner=(owner)
        @owner = owner
        owner.animals.push(self) unless owner.animals.include?(self)
      end
end