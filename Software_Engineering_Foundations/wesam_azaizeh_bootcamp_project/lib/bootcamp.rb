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

    ## PART 2 ###

    def student_to_teacher_ratio
        (@students.size / @teachers.size).floor
    end

    def add_grade(student, grade)
        if enrolled?(student) 
            @grades[student] << grade
            return true
        else
            false
        end
    end

    def num_grades(student)
        enrolled?(student) ? @grades[student].size : false
    end

    def average_grade(student)
        enrolled?(student) && @grades[student].size > 0 ? (@grades[student].sum / @grades[student].size).floor : nil
    end
end

bootcamp = Bootcamp.new("Map Academy", "Anyone can be a cartographer.", 6)
5.times {bootcamp.enroll('student')}
3.times {bootcamp.hire('teacher')}
p bootcamp.add_grade('studet', 5)