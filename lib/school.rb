# code here!

class School
    
    def initialize(name)
        @name = name
        @roster ={}
    end

    attr_reader :name, :roster

    def add_student(name, grade)
        @roster[grade] ||= []
        @roster[grade] << name
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        # @roster.each{|grade, students| students.sort!}
        @roster.map{|grade, students| [grade, students.sort]}.to_h
    end



end