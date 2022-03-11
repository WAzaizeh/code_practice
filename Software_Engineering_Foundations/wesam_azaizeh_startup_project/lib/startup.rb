require "employee"

class Startup

    ## PART 2 ##

    attr_reader :name, :funding, :salaries, :employees

    def initialize(name, funding, salaries)
        @name = name
        @funding = funding
        @salaries = salaries
        @employees = []
    end

    def valid_title?(title)
        @salaries.has_key?(title)
    end

    def >(startup_2)
        self.funding > startup_2.funding
    end

    def hire(employee_name, title)
        valid_title?(title) ? @employees << Employee.new(employee_name, title) : (raise 'title is invalid!') 
    end

    def size
        @employees.size
    end

    def pay_employee(employee)
        amount = @salaries[ employee.title]
        if @funding > amount
            employee.pay( amount)
            @funding -= amount
        else
            (raise 'insufficient funding!')
        end
    end

    def payday
        @employees.each {|e| self.pay_employee(e)}
    end

end
