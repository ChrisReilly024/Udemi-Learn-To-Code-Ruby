class Gadget
    attr_reader :product_id
    attr_writer :password
    attr_accessor :user_name
    def initialize(user_name, password)
        @user_name = user_name
        @password = password
        @product_id = "#{('a'..'z').to_a.sample}_#{rand(1...100)}"
    end

    def to_s
        "#{@user_name}'s password is #{@password} and product_id is #{@product_id}. It is made from the #{self.class} class and its oject id is #{self.object_id}"
    end
# # getters
#     def user_name
#         @user_name
#     end
    
#     def password
#         @password
#     end

#     def product_id
#         @product_id
#     end
# # setters
#     def user_name=(name)
#         @user_name = name
#     end
    
#     def password=(pass)
#         @password = pass
#     end

#     def product_id=(id)
#         @product_id = id
#     end

end

laptop = Gadget.new('me', 1234)
# phone = Gadget.new
# microwave = Gadget.new

p laptop.user_name
# # p laptop.password
p laptop.product_id 

# laptop.user_name = 'me_2'
# laptop.password = 4567
# laptop.product_id

# p laptop.user_name
# # p laptop.password
# p laptop.product_id