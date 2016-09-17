def get_all_words(file_name, level)
  lines = File.readlines(file_name)
  lines = lines.map! do |words|
    words.chomp
  end
end

def difficulty(file_lines, level)
  mini_list = []
  file_lines.each do |words|
    if level == "easy"
      mini_list << words if get_easy_words(words)
    elsif level == "normal"
      mini_list << words if get_normal_words(words)
    elsif level == "hard"
      mini_list << words if get_hard_words(words)
    else
      puts "Invalid input. Please follow the directions."
      main
    end
  end
  return mini_list.sample
end

def get_easy_words(lines)
lines.length >= 4 && lines.length <= 6
end

def get_normal_words(lines)
lines.length >= 6 && lines.length <= 8
end

def get_hard_words(lines)
  lines.length >= 8 && lines.length <= 24
end

def display_word_blanks(word)
  word.gsub(/[0-9A-Za-z]/, " _ ")
end

def guesses(letter, word)
  if word.include?(letter)
    puts word.gsub(/[^ #{letter}]/,"_")
  end
end
  #  word.gsub(/[^(letter)]/," _ ")
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
  level = gets.chomp.downcase
  lines = get_all_words("/usr/share/dict/words", level)
  word = difficulty(lines,level)
  puts word
  puts display_word_blanks(word)
  puts "Please guess a letter"
  guess = gets.chomp
  guesses(guess, word)
end

if __FILE__==$PROGRAM_NAME
main
end
