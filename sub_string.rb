# frozen_string_literal: true

def substrings(string, dictionary)
  result = Hash.new(0)
  string.downcase!
  dictionary.each do |word|
    count = string.scan(/(?=#{word})/).count
    result[word] = count if count.positive?
  end
  result
end
