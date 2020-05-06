# class Array
#     def add
#         total = 0
#         self.each {|el| total += el}
#         total
#     end
# end

# ar = [1,2,3,4]

# p ar.add

# class Hash
#     def identify_duplicate_values
#         values = []
#         dupes = []
#         self.each_value {|el| values.include?(el) ? dupes << el : values << el}
#         dupes.uniq
#     end
# end

# scores = {a: 100, b: 100, c: 83, d: 32, e: 50, f: 83}

# p scores.identify_duplicate_values

class Integer
    def seconds
        self
    end
    def minutes
        self * 60
    end
    def hours
        self * 60 * 60
    end
    def days 
        self * 60 * 60 * 24
    end

    def custom_times
        i = 0
        while i < self
            yield(i+1)
            i += 1
        end
    end
end
# puts Time.now
# puts Time.now + 45.minutes
# puts Time.now + 4.hours
# puts Time.now + 7.days
# puts 5.times {|i| puts i}
5.custom_times {|i| puts i}
