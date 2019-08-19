require_relative "employee"

class Manager < Employee
  attr_reader :employees

  def initialize(name, title, salary, boss)
    super(name, title, salary, boss)
    @employees = []
  end

  def bonus(multiplier)
    total_salary = 0
    self.employees.each do |employee| 
      # puts "#{employee.name}"
      total_salary += employee.salary
    end
    total_salary * multiplier
  end

  def add_employee(employee)
    @employees << employee unless @employees.include?(employee)
  end

end