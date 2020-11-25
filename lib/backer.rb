class Backer
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        ProjectBacker.all.map { |bp| bp.project if bp.backer == self }.compact
    end

    def self.all 
        @@all
    end
end