# phrase = 'The Ruby Programming Language is Amazing'

# puts phrase.start_with?("The Ruby")

# def custom_start_with?(string,substring)
#     # string.start_with?(substring)
#     string[0...substring.length] == substring
# end

# def custom_end_with?(string,substring)
#     # string.end_with?(substring)
#     string[-(substring.length)..-1] == substring
# end

# p custom_start_with?('hello', 'he')
# p custom_end_with?('bootcamp', 'amp')


def longest_word(sentence)
    sentence.split.inject {|max, word| max = max.length >= word.length ? max : word }    
end

p longest_word('Bobby loves big scary kangaroos')

