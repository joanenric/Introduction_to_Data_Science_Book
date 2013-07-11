hashtag_list = function (twDF) {
  #retweets_list() takes as input a dataframe twDF of tweets and returns as output a list of all of the retweet screennames and the count of the number of times for each retweet
  twDF$text = str_replace(twDF$text, "  ", " ")
  hash = str_match(tolower(twDF$text), "#[[:alnum:]]{1,}")
  #hash = hash[ ,1]
  table(as.factor(hash))
}