class Student
  def initialize(name)
    @name = name
    @grades = []
  end

  attr_reader :name, :grades

  def add_grade(grade)
    @grades << grade
  end

  def average_grade
    @grades.sum / @grades.size.to_f
  end

  def letter_grade
    case average_grade
    when 90..100 then 'A'
    when 80..89 then 'B'
    when 70..79 then 'C'
    when 60..69 then 'D'
    else 'F'
    end
  end
end
