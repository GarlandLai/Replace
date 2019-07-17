require ('pry')

class FindReplace
  def initialize(input, old_word, new_word)
    @sentence = input
    @old_word = old_word
    @new_word = new_word
  end

  def replace
    @sentence.gsub(@old_word, @new_word)
  end
end

puts "Enter in a sentence:"
input = gets.chomp
puts "Enter a word from the sentence to replace."
old_word = gets.chomp
puts "Enter the word you want to replace it with."
new_word = gets.chomp
sentence = FindReplace.new(input, old_word, new_word)
p sentence.replace



# Long method below. Above is refractored.

# require ('pry')
#
# class FindReplace
#   def initialize(sentence)
#     @@sentence = sentence
#   end
#
#   def replace()
#     puts "Choose words in the sentence to find and replace: #{@@sentence}"
#     @@split_sentence = @@sentence.split(' ')
#     @@replace_these = gets.chomp
#     puts "Replace with?"
#     @@replace_with = gets.chomp
#
#     @@split_sentence.length.times do |i|
#       if @@split_sentence[i] == @@replace_these
#         @@split_sentence[i] = @@replace_with
#       end
#     end
#     puts @@split_sentence.join(" ")
#   end
# end
#
# puts "Enter in a sentence:"
# input = gets.chomp
# sentence = FindReplace.new(input)
# sentence.replace
