class SuperHero
    attr_reader :name, :power, :bio
    @@all = []

    def initialize(args)
        @name = args[:name]
        @power = args[:power]
        @bio = args[:bio]
        @@all << self
    end

    def self.all
        @@all
    end

    def self.clear
        @@all=[]
    end
end 