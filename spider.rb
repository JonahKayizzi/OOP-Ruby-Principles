require "./animal.rb"

class Spider < Animal
    def initialize (web_strength_level, name = "Unknown")
        super(name, 8, "spider")
        @web_strength_level = web_strength_level
    end

    def make_a_web
        "www"
    end

    def speak
        "..."
    end
end