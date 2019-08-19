require_relative "employee"
require_relative "manager"

require "byebug"

shawna = Employee.new("Shawna", "TA", 12000, "Darren") 
david = Employee.new("David", "TA", 10000, "Darren") 

darren = Manager.new("Darren", "TA Manager", 78000, "Ned")
darren.add_employee(shawna)
darren.add_employee(david)

ned = Manager.new("Ned", "Founder", 1000000, nil)
ned.add_employee(darren)
ned.add_employee(shawna)
ned.add_employee(david)

puts ned.bonus(5) # => 500_000
puts darren.bonus(4) # => 88_000
puts david.bonus(3) # => 30_000
