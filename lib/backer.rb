class Backer
    attr_accessor :name
    @@all=[]
    def initialize(name)
        @name=name
        @@all<<self
    end

    def back_project(project)
        ProjectBacker.new(project,self)
    end

    def backed_projects
        arr=ProjectBacker.all.find_all{|value|
        value.backer==self}
        arr.map{|ele|
        ele.project}

    end

end
