def get_all_words(lines) # retrieves and cleans all words in file and stores in arr
  lines = File.readlines("usr/share/dict/words")
  lines.map do |words|
    words.chomp
  end
end

def get_easy_words(lines)
  easy =lines.map { |words| (words.length >= 4) && (words.length <= 6) }
end

def get_normal_words(lines)
  normal =lines.map { |words| (words.length >= 6) && (words.length <= 8) }
end

def get_hard_words(lines)
  hard =lines.map { |words| (words.length >= 8) && (words.length <= 24) }
end


def # select word at random
end

def # display word with blanks/letters filled in

end

def # check if word has been guessed

end

def main()
  # enter main code here
end

if __FILE__ == $PROGRAM_NAME
  main
end
