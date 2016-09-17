require 'pry'
def get_all_words(file_name)# retrieve all words in file and stores words as strings in array
  lines = File.readlines(file_name)
  lines = lines.map! do |words|
    words.chomp
  end
  return lines
end

# def won_game()
#   mystery.each do |letter|
#     return false if ! correct_guesses.include?(letter)
#   end
#   end
#   return true
# end


def get_easy_words(file_lines)
  easy_words = []
  file_lines.each do |easy_word|
    if (easy_word.length >= 4) && (easy_word.length <= 6)
      easy_words << easy_word
    end
  end
  return easy_words
end

def get_normal_words(file_lines)
  normal_words = []
  file_lines.each do |normal_word|
    if (normal_word.length >= 6) && (normal_word.length <= 8)
      normal_words << words
    end
  end
  return normal_words
end

=begin
def get_hard_words(lines)
  hard_words = []
  hard = lines.each do |words|
  if (words.length >= 8) && (words.length <= 24)
    hard_words << words
  end
  end
end

#
# def # select word at random
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

=end
def main()
  puts "Which difficulty would you like?"
  level = gets.chomp.downcase
  lines = get_all_words("/usr/share/dict/words")
  if level == "easy"
    easy_words = get_easy_words(lines)
  elsif level == "normal"
    normal_words = get_normal_words(lines)
  else # level =="hard"
    hard_words = get_hard_words(lines)
  end
end

if __FILE__ == $PROGRAM_NAME
  main
end
