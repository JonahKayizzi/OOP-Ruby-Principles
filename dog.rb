require "./animal.rb"
require "./foods.rb"

class Dog < Animal
    def initialize(color, name = "Unknown")
        super(name, 4, "dog")
        @color = color
        @liked_food = DogFood.new()
    end

    def bring_a_stick
        "Here's your stick!: _________"
    end

    def speak
        "woof, woof"
    end
end