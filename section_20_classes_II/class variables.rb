class Bike
    # class variables
    @@maker = 'BikeTech'
    @@count = 0 # can use this to track # of objects created
    # class methods
    def self.description
        "Hi, I am a blueprint for bicycles"
    end
    def self.count
        @@count
    end
    def maker
        @@maker
    end

    def initialize
        @@count += 1
    end

end

p Bike.description

p Bike.count

a = Bike.new
b = Bike.new
c = Bike.new

p Bike.count

p a.maker
p b.maker
p c.maker
