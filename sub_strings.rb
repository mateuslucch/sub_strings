dictionary = ["below", "down", "go", "going", "horn", "how", "howdy",
              "it", "i", "low", "own", "part", "partner", "sit"]
user_phrase = "Howdy partner, sit down! How's it going?"

def substrings(user_phrase, dictionary)
  the_hash = Hash.new 0
  count = 0
  phrase_array = user_phrase.downcase.gsub(/\p{Punct}/, "").split

  phrase_array.each do |phrase_word|
    dictionary.each do |word|
      if phrase_word[word]
        count += 1
      end
      if count > 0
        the_hash[word] += count
        count = 0
      end
    end
  end
  return the_hash.sort.to_h
end

puts substrings(user_phrase, dictionary)
