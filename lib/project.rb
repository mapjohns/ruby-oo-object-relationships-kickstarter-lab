class Project
    attr_accessor :title
    @@all = []
    def initialize(title)
        @title = title
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        testing = ProjectBacker.all.select {|pb| pb.project == self}
        testing.map do |backer|
            backer.backer
        end
    end
end