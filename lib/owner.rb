class Owner
  attr_accessor :pets

  NAME = ""
  SPECIES = ""

  @@all = []

  def initialize(name)
    NAME = name
    SPECIES = human
    @pets = []
    self << @@all
  end

  def say_species
    @species 
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