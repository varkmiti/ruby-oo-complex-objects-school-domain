# code here!
require 'pry'

class School
    def initialize(name)
        @name = name
        @roster = Hash.new
    end 

    def roster 
        @roster
    end 

    def add_student(name, grade)
        if @roster[grade] == nil 
            @roster[grade] = []
            @roster[grade] << name
        elsif
            @roster[grade] << name
        end 
    end

    def grade(grade)
        @roster[grade]
    end 

    def sort
        # My squad had to help me with this; 
        #each over a hash was a little wonky
        sorted_roster = {}
        @roster.each do |grade, students|
            sorted_roster[grade] = students.sort
        end
        sorted_roster
    end
end

