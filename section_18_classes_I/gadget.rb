class Gadget
    def initialize
        @user_name = "User #{rand(1...100)}"
        @password = 'password'
        @production_id = "#{('a'..'z').to_a.sample}_#{rand(1...100)}"
    end
end

p laptop = Gadget.new
p phone = Gadget.new
p microwave = Gadget.new
shiny = Gadget.new
flashy = Gadget.new

p laptop.instance_variables