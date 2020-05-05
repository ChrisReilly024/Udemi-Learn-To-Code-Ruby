class Gadget
    def initialize
        @user_name = "User #{rand(1...100)}"
        @password = 'password'
        @product_id = "#{('a'..'z').to_a.sample}_#{rand(1...100)}"
    end

    def to_s
        "#{@user_name}'s password is #{@password} and product_id is #{@product_id}. It is made from the #{self.class} class and its oject id is #{self.object_id}"
    end

    def user_name
        @user_name
    end
    
    def password
        @password
    end

    def product_id
        @product_id
    end

end

laptop = Gadget.new
phone = Gadget.new
microwave = Gadget.new

p laptop.user_name
p laptop.password
p laptop.product_id