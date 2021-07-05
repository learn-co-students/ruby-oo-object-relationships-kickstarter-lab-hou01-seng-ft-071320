class Project
    attr_accessor :title

    @@all = []

    def self.all
        @@all
    end

    def initialize(title)
        @title = title
        @@all << self
    end

    def add_backer(backer)
        ProjectBacker.new(self,backer)
    end

    def backers
        ProjectBacker.all.find_all {|index| index.project == self}.collect{|index| index.backer}
    end
end