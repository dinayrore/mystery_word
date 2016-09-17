
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

def guesses(word)
  turn = 0
  guess_correct =[]
  while turn < 8
    puts "Please guess a letter"
    letter = gets.chomp.downcase
    if guess_correct.include?(letter)
      puts "You already guessed that. Try again"
      puts word.gsub(/[^ #{guess_correct}]/," _ ")
    elsif word.include?(letter)
      guess_correct << letter
      puts "Good job!"
      puts word.gsub(/[^ #{guess_correct}]/," _ ")
      turn += 1
    else
      puts "You suck! Try again"
      puts word.gsub(/[^ #{guess_correct}]/," _ ")
      turn += 1
    end
  end
end

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
  guesses(word)
end

if __FILE__==$PROGRAM_NAME
main
end
