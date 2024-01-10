def substrings(string, dictionary)  
  dictionary.reduce(Hash.new(0)) do |sub_count, word|
    count = string.downcase.scan(word).length
    sub_count[word] += count unless count == 0
    sub_count
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("Howdy partner, sit down! How's it going?", dictionary)