class Bootcamp
    def initialize(name, slogan, student_capacity)
        @name = name
        @slogan = slogan
        @student_capacity = student_capacity
        @teachers = []
        @students = []
        @grades = Hash.new { |h, k| h[k] = [] }
    end

    def name
        @name
    end

    def slogan
        @slogan
    end

    def teachers
        @teachers
    end

    def students
        @students
    end

    def hire(name)
        @teachers << name
    end

    def enroll(name)
        if @students.size < @student_capacity
            @students << name
            return true
        else
            false
        end

    end

    def enrolled?(name)
        @students.include?(name)
    end

end

bootcamp = Bootcamp.new("Map Academy", "Anyone can be a cartographer.", 6)
p bootcamp