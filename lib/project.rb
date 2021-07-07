class Project
    attr_accessor :title
    @@all=[]
    def initialize(title)
        @title=title
        @@all<<self
    end
    def add_backer(backer)
        ProjectBacker.new(self,backer)
    end
    def backers
        arr=ProjectBacker.all.find_all{|value|
        value.project==self}
        arr.map{|ele|
        ele.backer}
    end
end
