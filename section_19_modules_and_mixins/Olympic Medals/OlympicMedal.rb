class OlympicMedal
    include Comparable

    MEDAL_VALUES = {"Gold" => 3, "Silver" => 2, "Bronze" => 1}
    
    attr_reader :type
    def initialize(type, weight)
        @type = type
        @weight = weight
    end

    def <=>(other)
        return -1 if MEDAL_VALUES[type] < MEDAL_VALUES[other.type] 
        return 1 if MEDAL_VALUES[type] > MEDAL_VALUES[other.type]
        return 0 
    end


end

gold = OlympicMedal.new('Gold', 15)
silver = OlympicMedal.new('Silver', 10)
bronze = OlympicMedal.new('Bronze', 5)
p gold > silver