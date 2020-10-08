class Owner
  attr_accessor :pets
  attr_reader :species, :name
  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @pets = []
    @@all << self
  end

  def say_species
    "I am a #{@species}." 
  end

  def self.all 
    @@all
  end 

  def self.count 
    @@all.length
  end 

  def self.reset_all
    @@all.clear
  end 
  
  def cats 
    all_cats = []
    Cat.all.each {|pet|
      if pet.is_a?(Cat) && pet.owner == self
        all_cats << pet
      end
    }
    all_cats
  end
  
  def dogs 
    all_dogs = []
    Dog.all.each {|pet|
      if pet.is_a?(Dog) && pet.owner == self
        all_dogs << pet
      end
    }
    all_dogs
  end
  
  def buy_cat(name)
    bought_cat = nil
    Cat.all.each {|pet|
      if pet.is_a?(Cat) && pet.name == name
        bought_cat = pet
      end
    } 
    bought_cat
  end
  
  def buy_dog(dog)
    if dog.is_a?(Dog)
      dog.owner = self 
    end    
  end
  
  
  
  

end