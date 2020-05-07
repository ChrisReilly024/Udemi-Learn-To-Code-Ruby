class Player
    def play_game
        rand(1...100) > 50 ? "Win!!" : "Lose"
    end
end

bob = Player.new
dan = Player.new

# p bob.play_game
# p dan.play_game

def dan.cheat
    "Win!!"
end

p bob.play_game
# p dan.lay_game
p dan.cheat
# p bob.cheat

p dan.singleton_class
# p bob.singleton_methods