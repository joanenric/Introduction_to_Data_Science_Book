TweetFrame = function(searchTerm, maxTweets = 100){
  # TweetFrame() - Return a dataframe based on a search on Twitter
  twtList = searchTwitter(searchTerm, n=maxTweets)
  temp_DF = do.call("rbind", lapply(twtList, as.data.frame))
  return (temp_DF[order(as.integer(temp_DF$created)), ])
}


# as.data.frame() coerces each list element into a row
# lapply() applies this to all of the elements in twtList
# rbind() takes all of the rows and puts them together
# do.call() gives rbind() all the rows as individual elements