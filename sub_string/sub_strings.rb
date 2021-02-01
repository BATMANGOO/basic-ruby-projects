dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(word, directory)
  arr = word.downcase.split
  directory.reduce(Hash.new(0)) do |result,str|
    arr.each do |i|
      if i.include?(str)
        result[str] += 1
      end
    end
    result
  end
end

puts substrings("below", dictionary)


