class Owner
  attr_accessor :pets
  attr_reader :species
  attr_writer :name
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
    @all.clear
  end 
  
  
  
  
  
  
  

end