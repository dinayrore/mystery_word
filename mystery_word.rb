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
  return mini_list.sample.downcase
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
  guess_correct = []
  guess_incorrect = []
  turn = 0
  while turn < 8
    print "Please guess a letter: "
    letter = gets.chomp.downcase
    if guess_correct.include?(letter) || guess_incorrect.include?(letter)
      puts "You guessed that letter already. Try again."
      puts word.gsub(/[^#{guess_correct}]/, " _ ")
      puts "Turn: #{turn}"
    elsif word.include?(letter)
      guess_correct << letter
      puts "Good job!"
      puts word.gsub(/[^#{guess_correct}]/, " _ ")
      turn += 1
      puts "Turn: #{turn}"
      end_game(guess_correct, word, turn)
    else
      puts "You suck! Try again."
      turn += 1
      puts "Turn: #{turn}"
      if guess_correct.count < 1
        guess_incorrect << letter
        puts word.gsub(/[^#{letter}]/, " _ ")
      else
        guess_incorrect << letter
        puts word.gsub(/[^#{guess_correct}]/, " _ ")
      end
    end
  end
  end_game(guess_correct, word, turn)
end

def end_game(guess_correct, word, turn)
  if word_array = word.split(//).uniq.sort
      if word_array == guess_correct.sort!
        puts "YOU WIN!"
        puts "Would you like to play again?"
        print "Type \'rematch\' to play again and \'exit\' to quit: "
        user_input = gets.chomp.downcase
        if user_input == "rematch"
          main
        else
          exit
        end
      end
  end
  if turn >= 8
        puts "YOU LOSE."
        puts word
        puts "Would you like to play again?"
        print "Type \'rematch\' to play again and \'exit\' to quit: "
        user_input = gets.chomp.downcase
        if user_input == "rematch"
          main
        else
          exit
        end
  end
end

def main()
  puts "Lets play a game of Hangman!"
  print "Choose a difficulty level by typing \'easy\', \'normal\', or \'hard\': "
  level = gets.chomp.downcase
  lines = get_all_words("/usr/share/dict/words", level)
  word = difficulty(lines,level)
  puts display_word_blanks(word)
  guesses(word)
end

if __FILE__ == $PROGRAM_NAME
main
end
