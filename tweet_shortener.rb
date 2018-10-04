
def word_substituter(string)
  dictionary = {
    "hello"=> "hi",
    "two"=> 2,
    "to"=> 2,
    "too"=> 2,
    "for"=> 4,
    "four"=> 4,
    "be"=> "b",
    "you"=> "u",
    "at"=> "@",
    "and"=> "&"
  }
  array = string.split(" ").to_a
  new_array = []
    array.each do |word|
      if dictionary.has_key?(word)
        new_array << dictionary.fetch(word)
      else
        new_array << word
      end
    end
return new_array.join(" ")
end

def bulk_tweet_shortener(tweets)
  dictionary = {
    "hello"=> "hi",
    "two"=> 2,
    "to"=> 2,
    "too"=> 2,
    "for"=> 4,
    "four"=> 4,
    "be"=> "b",
    "you"=> "u",
    "at"=> "@",
    "and"=> "&"
  }
tweets.each do |string|
  new_tweets = ""
  array = string.split(" ").to_a
  new_array = []
    array.each do |word|
      if dictionary.has_key?(word)
        new_array << dictionary.fetch(word)
      else
        new_array << word
      end
    end
    new_tweets << new_array.join(" ")
puts new_tweets
end
end
