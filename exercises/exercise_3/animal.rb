class Animal
  def initialize(name, species)
    @name = name
    @species = species
  end

  attr_accessor :name, :species

  def basic_info
    "#{@name} the #{@species}"
  end
end
