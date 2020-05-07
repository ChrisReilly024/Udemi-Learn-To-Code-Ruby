class Candidate
    attr_accessor :name, :age, :occupation, :hobby, :birthplace
    
    def initialize(name, details)
        @name = name
        @age = details[:age]
        @occupation = details[:occupation]
        @hobby = details[:hobby]
        @birthplace = details[:birthplace]
    end

end

smith = Candidate.new('baker', 49, 'senator', 'fishing', 'new york')

p smith