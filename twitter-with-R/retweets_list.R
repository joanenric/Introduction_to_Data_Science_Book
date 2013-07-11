retweets_list = function (twDF) {
  #retweets_list() takes as input a dataframe twDF of tweets and returns as output a list of all of the retweet screennames and the count of the number of times for each retweet
  text = twDF$text
  rt = str_match(twDF$text, "RT @[a-z, A-Z]*:")
  rt = rt[ ,1]
  table(as.factor(rt))
}