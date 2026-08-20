dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
  result = Hash.new(0)
  string.downcase!
  dictionary.each do |word|
    count = string.scan(/(?=#{word})/).count
    result[word] = count if count > 0
  end
  result
end

