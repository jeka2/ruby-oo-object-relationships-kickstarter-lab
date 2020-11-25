class Project
    attr_accessor :title

    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers 
        ProjectBacker.all.map { |bp| bp.backer if bp.project == self }.compact
    end

    def self.all
        @@all 
    end
end