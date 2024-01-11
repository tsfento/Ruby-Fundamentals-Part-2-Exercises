require_relative 'student'

class Gradebook
  def initialize
    @students = []
  end

  def add_student(student)
    @students << student
  end

  def remove_student(name)
    @students.reject! { |student| student.name == name }
  end

  def find_student(name)
    @students.find { |student| student.name == name }
  end

  def student_average(name)
    @students.find { |student| student.name == name }.average_grade
  end

  def student_letter_grade(name)
    @students.find { |student| student.name == name }.letter_grade
  end
end
