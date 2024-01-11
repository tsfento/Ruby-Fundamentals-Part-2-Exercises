class Employee
  def initialize(name, position, salary)
    @name = name
    @position = position
    @salary = salary
  end

  attr_accessor :name, :position

  def details
    "Name: #{@name}, Position: #{@position}"
  end

  def get_salary
    @salary
  end

  def is_paid_less_than?(employee)
    @salary < employee.get_salary
  end
end
