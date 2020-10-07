class Owner
  attr_accessor :pets, :name, :species
  attr_reader :species

  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @pets = []
    @@all << self
  end

  def say_species
    puts "I am a #{@species}" 
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