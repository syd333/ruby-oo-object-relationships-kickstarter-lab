class Backer 
attr_accessor :name, :backed_projects

    def initialize(name)
        @name = name
        @backed_projects = []
    end

    # This method should create a `ProjectBacker` instance using the
    # provided Project instance and the current Backer instance (the instance this
    # method was called on).
    def back_project(project)
        @backed_projects << project
        ProjectBacker.new(project, self)
    end


end