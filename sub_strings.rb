message = ""
dictionary = []

def count_word (word, string)
 string.downcase.scan(word).length
end

def substrings (string, dictionary)
  total_count = Hash.new()
  dictionary.each do |word|
    count = count_word word, string
    if count > 0
      key = word.to_sym
      total_count[key] = count
    end
  end
  total_count
end


substrings message, dictionary