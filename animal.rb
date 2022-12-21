class Animal
    def initialize(name = "Unknown", number_of_legs,type)
        @id = rand(1000)
        @name = name
        @number_of_legs = number_of_legs
        @type = type
    end

    attr_reader :id
    attr_reader :type
    attr_accessor :name
    attr_reader :number_of_legs

    def speak
        "grrrr"
    end
end