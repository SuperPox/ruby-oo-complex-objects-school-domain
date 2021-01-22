require 'pry'
class School
    
    attr_accessor :name, :roster
    
    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name,grade) # hint? ||=
        if @roster.key?(grade) 
            @roster[grade] << name
        else
            @roster[grade] = []
            @roster[grade] << name
        end
    end

    def grade(grade) # return all of the students in that grade: ["Zach Morris", "AC Slater"] 
        return @roster[grade]
    end

    def sort #{9 => ["AC Slater", "Zach Morris"], 10 => ["Aardvark", "Kelly Kapowski"]} 
        # return @roster.values.sort.name
        #@roster.values.sort_by { |value| value }.to_h
        #@roster.values.sort
        newHash = {}
        @roster.each {|gradeKey,studentsValue| newHash[gradeKey] = studentsValue.sort}
        return newHash
        #@roster.each do value.sort
        
        #return @roster
    end
end

