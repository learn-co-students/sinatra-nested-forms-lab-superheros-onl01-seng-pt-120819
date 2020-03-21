class SuperHero
  attr_reader :name, :power, :bio
 
  SUPERHEROES = []
 
  def initialize(args)
    @name = args[:name]
    @power = args[:power]
    @bio = args[:bio]
    SUPERHEROES << self
  end
 
  def self.all
    SUPERHEROES
  end
 
end
