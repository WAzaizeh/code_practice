require_relative "employee"

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

    def >(startup2)
        self.funding > startup2.funding
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

    def average_salary
        sum = 0
        @employees.each {|e| sum += @salaries[ e.title]}
        sum / employees.size
    end

    def close
        @employees = []
        @funding = 0
    end

    def acquire(startup2)
        @funding += startup2.funding
        startup2.salaries.map {|salary| @salaries[salary[0]] = salary[1] if !@salaries.has_key?( salary[0])}
        startup2.employees.map {|employee| @employees << employee}
        startup2.close
    end

end