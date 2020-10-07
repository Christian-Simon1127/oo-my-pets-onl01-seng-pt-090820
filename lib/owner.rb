class Owner
  attr_accessor :pets
  attr_reader :name, :species

  def initialize(name)
    @name = name
    @species = human
    @pets = []
  end

  def say_species
    @species 
  end


end