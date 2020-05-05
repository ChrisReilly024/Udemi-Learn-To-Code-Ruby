class Gadget
    def initialize
        @user_name = "User #{rand(1...100)}"
        @password = 'password'
        @product_id = "#{('a'..'z').to_a.sample}_#{rand(1...100)}"
    end

    def info
        "#{@user_name}'s password is #{@password} and product_id is #{@product_id}"
    end
end

laptop = Gadget.new
phone = Gadget.new
microwave = Gadget.new

p laptop.info