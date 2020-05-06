# module Purchaseable
#     def purchase(item)
#         "#{item} has been purchased"
#     end
# end

# class Bookstore
#     include Purchaseable
# end

# class SuperMarket
#     include Purchaseable
# end

# class CornerMarket < SuperMarket

# end

# p Bookstore.ancestors

# barnsAndNobles = Bookstore.new
# # p barnsAndNobles.purchase('Atlas Shrugged')
# shoprite = CornerMarket.new

# module Announcer
#     def who_am_i
#         "The name of this class is #{self}"
#     end
# end

# class Dog
#     # include Announcer
#     extend Announcer
# end

# class Cat 
#     # include Announcer
#     extend Announcer
# end

# dog = Dog.new
# cat = Cat.new

# p dog.who_am_i
# p cat.who_am_i

# p Dog.who_am_i
# p Cat.who_am_i

class ConvenienceStore
    include Enumerable
    attr_reader :snacks
    def initialize
        @snacks = []
    end

    def add_snack(snack)
        snacks << snack
    end

    def each
        snacks.each do |snack|
            yield snack
        end
    end
    
end

st = ConvenienceStore.new
st.add_snack('apple')
st.add_snack('chips')
st.add_snack('soda')
st.each {|snack| p "#{snack} is delicious"}
p st.select {|snack| snack == 'apple'}



