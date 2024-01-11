require_relative 'animal'

class Bird < Animal
  def initialize(name, species, wing_span)
    super(name, species)
    @wing_span = wing_span
  end

  attr_accessor :wing_span

  def bird_info
    "#{@name} the #{@species} with a #{@wing_span}cm wing span"
  end
end
