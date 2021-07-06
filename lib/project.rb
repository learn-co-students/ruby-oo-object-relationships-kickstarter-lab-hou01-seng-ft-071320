class Project
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        array = []
        ProjectBacker.all.find_all do |index|
            if index.project == self
                array <<  index.backer
            end
        end
        array
    end
end