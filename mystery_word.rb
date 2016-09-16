def get_all_words(lines) # retrieves and cleans all words in file and stores in arr
  lines = File.readlines("usr/share/dict/words")
  lines.map do |words|
    words.chomp
  end
end

# make three functions one for each dificulty

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
