class Backer
    attr_accessor :name

    @@all = []

    def self.all
        @all 
    end
    
    
    def initialize(name)
        @name = name
        @@all << self
    end

    def back_project(project)
        ProjectBacker.new(project,self)
    end

    def backed_projects
        ProjectBacker.all.find_all {|index| index.backer == self}.collect{|index| index.project}
    end
end