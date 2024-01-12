require_relative 'dish'

class Menu
  def initialize
    @dishes = []
  end

  def add_dish(dish)
    @dishes << dish
    # @dishes << "#{dish.name}: #{dish.price}"
  end

  def remove_dish(name)
    # @dishes.delete(name)
    @dishes.reject! { |dish| dish.name == name }
  end

  def display_menu
    # menu = []
    # @dishes.each do |dish|
    #   # puts "#{dish.name}: #{dish.price}"
    #   # puts dish
    #   menu << "#{dish.name}: #{dish.price}"
    # end
    # menu

    # returns a new mapped array for each dish with the value of dish name
    # and price. #{'%.2f' % dish.price}
    # @dishes.map { |dish| "#{dish.name}: #{'%.2f' % dish.price}" }.join("\n")
    @dishes.map { |dish| "#{dish.name}: #{dish.price}" }.join(' ')
    # find out why join is necessary, because this fails:
    # @dishes.map { |dish| "#{dish.name}: #{'%.2f' % dish.price}" }
  end
end

# menu = Menu.new
# dish1 = Dish.new('Spaghetti', '5.00')
# dish2 = Dish.new('Lasagna', '7.00')
# menu.add_dish(dish1)
# menu.add_dish(dish2)
# puts menu.display_menu
# menu.remove_dish('Spaghetti')
# puts menu.display_menu
