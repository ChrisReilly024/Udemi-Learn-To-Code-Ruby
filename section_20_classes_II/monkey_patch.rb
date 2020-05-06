class Array
    def add
        total = 0
        self.each {|el| total += el}
        total
    end


end


ar = [1,2,3,4]

p ar.add