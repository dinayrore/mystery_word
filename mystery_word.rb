require 'pry'
def get_all_words(file_name)# retrieve all words in file and stores words as strings in array
  lines = File.readlines(file_name)
  lines = lines.map! do |words|
    words.chomp
  end
  return lines
end

def difficulty(file_lines)
  words = []
  level = gets.chomp.downcase
    if level == "easy"
      file_lines.each do |word|
      if word.length >= 4 && word.length <= 6
      words << word
      end
    end
    elsif level == "normal"
      file_lines.each do |word|
      if word.length >= 6 && word.length <= 8
      words << word
      end
    end
    else # level == "hard"
      file_lines.each do |word|
      if word.length >= 8 && word.length <= 24
      words << word
      end
    end
  end
  return words
end

#def select_word_at_random
  #
# end
#
# def # display word with blanks/letters filled in
#
# end
#
# def # check if word has been guessed
#
# end
#
# def won_game()
#   mystery.each do |letter|
#     return false if ! correct_guesses.include?(letter)
#   end
#   end
#   return true
# end


def main()
  puts "Lets play a game of Hangman!"
  print "Choose a difficulty level by typing \'easy\', \'normal\', or \'hard\': "
  lines = get_all_words("/usr/share/dict/words")
  if words = difficulty(lines)
    puts words
  else
    puts "Invalid input. Please follow the directions and try again."
  end
end

if __FILE__ == $PROGRAM_NAME
  main
end
