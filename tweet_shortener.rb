require 'pry'

 def dictionary 
  dictionary_hash = {
  "hello" =>"Hi",
  "to" => "2",
  "two" => "2",
  "too" => "2",
  "for" => "4",
  "four" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"
  }

end 


def word_substituter(tweet)
  tweet_short = []
  
  tweet.split(" ").each do |word|
    
  keys_array = dictionary.keys
  values_array  = dictionary.values  

    if keys_array.include?(word.downcase)
      i = keys_array.index(word.downcase)
      tweet_short << values_array[i]
    else 
      tweet_short << word
       
    end
  end 

   tweet_short.join(" ")

end


def bulk_tweet_shortener(tweets)
  i = 0
  while i < tweets.length
    puts word_substituter(tweets[i])
    i += 1
  end
end


def selective_tweet_shortener(tweet)
  if tweet.length > 140 
     return word_substituter(tweet)
  else 
   return tweet
  end  
end

def shortened_tweet_truncator(tweet)
  
  if word_substituter(tweet).length > 140
    return word_substituter(tweet[0..140])
end 
end 