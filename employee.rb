
require "byebug"

class Employee

    attr_accessor :name, :title, :salary, :boss


    def initialize(name, title, salary, boss = nil)
        @name = name
        @title = title
        @salary = salary
        self.boss = boss
    end 

    def bonus(multiplier)

        @salary * multiplier

    end 


    def boss=(boss)
        @boss = boss 
        boss.add_employee(self) unless boss.nil?
        boss
    end 

end


class Manager < Employee

    attr_accessor :employees

    def initialize(name, title, salary, boss)
        super(name, title, salary, boss)
        @employees = []
    end 

    
     def add_employee(subordinate)

        @employees << subordinate

        subordinate 

    end
    
    
    def bonus(multiplier) 

        self.total_subsalary * multiplier

    end 


    def total_subsalary

        sub_salary = 0 

        self.employees.each do |employee|

            if employee.is_a?(Manager)
            
                sub_salary += employee.salary + employee.total_subsalary

            else 

                sub_salary += employee.salary

            end 

       

        end 

        sub_salary
    end 

    
end 

 ned = Manager.new("Ned", "Founder", 1000000, nil)
 darren = Manager.new("Darren", "TA Manager", 78000, ned)
 shawna = Employee.new("Shawna", "TA", 12000, darren)
 david = Employee.new("David","TA",10000, darren)


p ned.total_subsalary
p darren.total_subsalary
p ned.bonus(5)
p darren.bonus(4)