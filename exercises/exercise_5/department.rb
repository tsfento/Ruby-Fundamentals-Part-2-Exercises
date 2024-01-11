require_relative 'employee'

class Department
  def initialize
    @employees = []
  end

  def add_employee(employee)
    @employees << employee
  end

  def remove_employee(name)
    @employees.reject! { |employee| employee.name == name }
  end

  def list_employees
    @employees
  end

  def highest_paid_between(employee1, employee2)
    if employee1.get_salary > employee2.get_salary
      employee1
    else
      employee2
    end
  end
end
