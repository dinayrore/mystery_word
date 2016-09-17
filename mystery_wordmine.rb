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



puts "What level do you want to play?"
level = gets.chomp
dictionary = get_all_words("/usr/share/dict/words")
if level == "easy"
  get_easy_words(dictionary,easy)
  index  = rand(0..33208)
  computer_num = easy[index]
  puts computer_num
end


get_normal_words(dictionary,normal)
get_hard_words(dictionary,hard)






=begin
if __FILE__ == $PROGRAM_NAME
  main
end
=end
