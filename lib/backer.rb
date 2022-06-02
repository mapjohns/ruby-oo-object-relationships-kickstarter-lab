class Backer
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        testing = ProjectBacker.all.select {|pb| pb.backer == self}
        testing.map do |project|
            project.project
        end
    end

end