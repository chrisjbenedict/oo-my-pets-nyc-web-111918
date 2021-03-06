class Owner
  # code goes here
  attr_accessor :name, :pets
  attr_reader :species

  OWNERS = []

  def initialize(species)
    @name = name
    @species = species
    OWNERS << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.all
    OWNERS
  end

  def self.count
    OWNERS.length
  end

  def self.reset_all
    OWNERS.clear
  end

  def say_species
    "I am a #{@species}."
  end

  def name
    @name
  end

  def pets
    @pets
  end

  def buy_fish(name)
    "I just bought #{name}, the fish."
    @pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    "I just bought #{name}, the cat."
    pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    "I just bought #{name}, the dog."
    pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    pets.each do |species, types|
      types.each do |type|
        type.mood = "nervous"
      end
      types.clear
    end
  end

  def list_pets
    "I have #{pets[:fishes].length} fish, #{pets[:dogs].length} dog(s), and #{pets[:cats].length} cat(s)."
  end

end
