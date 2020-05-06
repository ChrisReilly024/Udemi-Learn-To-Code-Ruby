require_relative 'app_store'

class Gadget
    attr_reader :product_id, :apps
    attr_accessor :user_name, :password
    def initialize(user_name, password)
        @user_name = user_name
        @password = password
        @product_id = "#{('a'..'z').to_a.sample}_#{rand(1...100)}"
        @apps = []
    end

    def password=(new_password)
        if validate_password(new_password)
            @password = new_password
            p "Success! new password is #{new_password}" 
        else
            raise "Invalid Password"
        end
    end
    
    def validate_password(new_password)
        new_password.is_a?(String) && new_password.length > 3 && new_password =~ /\d/
    end

    def to_s
        "#{@user_name}'s password is #{@password} and product_id is 
        #{@product_id}. It is made from the #{self.class} class and it's oject id is #{self.object_id}"
    end

    def install_app(name)
        app = AppStore.find_app(name)
        @apps << app unless @apps.include?(app)
    end

    def delete_app(name)
        app = apps.find {|installed_app| installed_app.name == name }
        apps.delete(app) unless app.nil?
    end

    def reset(username,password)
        @username = username
        @password = password
        @app = []
    end



    private
    def generate_production_number
        start_digits = rand(100..999)
        end_digits = rand(100..999)
        alpha = ('A'..'Z').to_a
        middle_digits = '2017'
        5.times {middle_digits << alpha.sample}
        "#{start_digits}-#{middle_digits}-#{end_digits}"
    end
    attr_writer :apps
end

# laptop = Gadget.new('me', 'abcd')
# p laptop.generate_production_number
# laptop.password = '3defg'
# p laptop

g = Gadget.new("boris", "password")
# p g.apps
g.install_app(:Chat)
g.install_app(:Twitter)
g.install_app(:Weather)
# p g.apps
g.delete_app(:Twitter)
