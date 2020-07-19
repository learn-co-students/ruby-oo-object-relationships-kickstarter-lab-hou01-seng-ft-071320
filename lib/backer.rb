require 'pry'
class Backer
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(proj)
        ProjectBacker.new(proj, self)
    end

    def backed_projects
        array = []
        ProjectBacker.all.map do |index|
            if index.backer == self
                array << index.project 
            end
        end
        array
    end

end
