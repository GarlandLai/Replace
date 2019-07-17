require ('pry')

class FindReplace
  def initialize(sentence)
    @@sentence = sentence
  end

  def replace()
    puts "Choose words in the sentence to find and replace: #{@@sentence}"
    @@split_sentence = @@sentence.split(' ')
    @@replace_these = gets.chomp
    puts "Replace with?"
    @@replace_with = gets.chomp

    @@split_sentence.length.times do |i|
      if @@split_sentence[i] == @@replace_these
        @@split_sentence[i] = @@replace_with
      end
    end
    puts @@split_sentence.join(" ")
  end
end

puts "Enter in a sentence:"
input = gets.chomp
sentence = FindReplace.new(input)
sentence.replace
