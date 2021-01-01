# code here!

class School

    def initialize(name)
        @name = name
        @roster = {}
    end

    def roster
    @roster
    end

    def add_student(name, grade)
        if(roster[grade])
            roster[grade] << name
        else
            roster[grade] = []
            roster[grade] << name
        end
    end

    def grade(grade)
        roster[grade]
    end

    def sort

        roster.map do |key, value|
            value.sort!
        end
        roster.sort.to_h
    end
end

# School
#   ::new
#     has an empty roster when initialized
#   #add_student
#     is able to add a student
#     is able to add multiple students to a class (grade)
#     is able to add students to different grades
#   #grade
#     is able to retreive students from a grade
#   #sort
#     is able to sort the students

# Finished in 0.0039 seconds (files took 0.11029 seconds to load)
# 6 examples, 0 failures