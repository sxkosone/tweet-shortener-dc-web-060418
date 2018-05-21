# Write your code here.
def dictionary
    dictionary = {
        "hello" => "hi",
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
    tweet_array = tweet.split(" ")
    tweet_array.map! do |word|
        if dictionary.keys.include?(word.downcase)
            word = dictionary[word.downcase]
        else
            word
        end
    end
    tweet_array.join(" ")
end

def bulk_tweet_shortener(tweet_array)
    tweet_array.each do |tweet|
        puts word_substituter(tweet)
    end
end

def selective_tweet_shortener(tweet)
    if tweet.size > 140
        return word_substituter(tweet)
    else
        return tweet
    end
end

def shortened_tweet_truncator(tweet)
    if tweet.size > 140
        trunc = tweet[0..134] + "(...)"
        return trunc
    else
        return tweet
    end
end