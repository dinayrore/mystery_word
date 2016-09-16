def get_all_words(lines) # retrieves and cleans all words in file and stores in arr
  lines = File.readlines("usr/share/dict/words")
  lines.map do |words|
    words.chomp
  end
end

def get_easy_words(lines)
  easy_words = []
  easy = lines.each |words|
  if (words.length >= 4) && (words.length <= 6)
    easy_words << words
  end
end

def get_normal_words(lines)
  normal_words = []
  normal = lines.each |words|
  if (words.length >= 6) && (words.length <= 8)
    normal_words << words
  end
end

def get_hard_words(lines)
  hard_words = []
  hard = lines.each |words|
  if (words.length >= 8) && (words.length <= 24)
    hard_words << words
  end
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
