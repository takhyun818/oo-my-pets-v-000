class Owner
    attr_accessor :name, :pets
    attr_reader :species
    OWNERS = []

    def initialize(species)
        @pets = {fishes: [], cats: [], dogs: []}
        @species = species
        OWNERS << self
    end

    def say_species
        "I am a #{species}."
    end

    def buy_fish(name)
        @pets[:fishes] << Fish.new(name)
    end

    def feed_fish
        pets[:fishes].each do |fish|
            fish.mood = "happy"
        end
    end

    def buy_cat(name)
        @pets[:cats] << Cat.new(name)
    end

    def play_with_cats
        pets[:cats].each do |cat|
            cat.mood = "happy"
        end
    end

    def buy_dog(name)
        @pets[:dogs] << Dog.new(name)
    end

    def walk_dogs
        pets[:dogs].each do |dog|
            dog.mood = "happy"
        end
    end

    def sell_pets
        pets.each do |species, animals|
            animals.each do |animal|
                animal.mood = "nervous"
            end
        end
        pets.clear
    end

    def list_pets
        "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
    end

    def self.all
        OWNERS
    end

    def self.count
        OWNERS.size
    end

    def self.reset_all
        OWNERS.clear
    end
end
