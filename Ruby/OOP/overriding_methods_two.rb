# class Employee
#   attr_accessor :name, :salary

#   def net_salary
#     salary * 0.88
#   end
# end

# class Manager < Employee
#   attr_accessor :bonus

#   def net_salary
#     salary * 0.88 + bonus
#   end
# end

class Employee
  attr_accessor :name, :salary

  def initialize(name, salary)
    @name = name
    @salary = salary
  end

  protected

  def net_salary
    @salary * 0.95
  end
end

class Manager < Employee
  attr_accessor :bonus

  def initialize(name, salary, bonus)
    @bonus = bonus
    super(name, salary)
  end

  def salary
    net_salary + bonus
  end
end

pepito = Manager.new('Pepito', 1_000_000, 200_000)
puts pepito.salary

puts "\n"

employee = Employee.new
puts employee


