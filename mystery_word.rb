easy = []
normal = []
hard = []

def get_all_words(x) # retrieves and cleans all words in file and stores in arr
  dictionary = File.readlines(x)
  dictionary.map! do |i|
    i.chomp
  end
end

def get_easy_words(x, array)
  x.each do |i|
    if i.length >= 4 && i.length <= 6
      array.push(i)
    end
  end
end

def get_normal_words(x, array)
  x.each do |i|
    if i.length >= 6 && i.length <= 8
      array.push(i)
    end
  end
end

def get_hard_words(x, array)
  x.each do |i|
    if i.length >= 8 && i.length <= 24
      array.push(i)
    end
  end
end
=begin
def get_normal(x)
  normal_words = []
  x.each do |i|
    if (i.length >=6 ) && (i.length <=8 )
      normal_words << x
    end
  end
end
=end


dictionary = get_all_words("/usr/share/dict/words")
get_easy_words(dictionary,easy)
get_normal_words(dictionary,normal)
get_hard_words(dictionary,hard)
print hard


=begin
 if dictionary.each do |x|
  if x.length >= 4 && x.length <= 6
    easy.push(x)
  end
end
=end



=begin
if __FILE__ == $PROGRAM_NAME
  main
end
=end
