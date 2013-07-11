CleanTweets = function(tweets) {
  tweets = str_replace_all(tweets,"  "," ")
  tweets = str_replace_all(tweets,"http://t.co/[a-z,A-Z,0-9]{8}","")
  tweets = str_replace(tweets,"RT @[a-z,A-Z]*: ","")
  tweets = str_replace(tweets,"#[a-z,A-Z]*","")
  tweets = str_replace(tweets,"@[a-z,A-Z]*","")
  return (tweets)
}