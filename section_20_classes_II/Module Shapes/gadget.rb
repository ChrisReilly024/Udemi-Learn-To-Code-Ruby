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
end

