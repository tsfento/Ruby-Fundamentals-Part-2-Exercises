require_relative 'animal'

class Mammal < Animal
  def initialize(name, species, fur_color)
    super(name, species)
    @fur_color = fur_color
  end

  attr_accessor :fur_color

  def mammal_info
    "#{@name} the #{@species} with #{@fur_color} fur"
  end
end
