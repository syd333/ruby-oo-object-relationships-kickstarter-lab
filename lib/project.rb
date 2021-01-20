class Project
    attr_reader :title
    attr_accessor :backers

    def initialize(title)
        @title = title
        @backers = []
    end

    
#     that takes in a Backer instance and creates a `ProjectBacker` using the Backer instance
#   and the current Project instance.
    def add_backer(backer)
        @backers << backer
        ProjectBacker.new(self, backer)
    end


end