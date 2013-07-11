wordcloud_plot = function(term){
  
  EnsurePackage("wordcloud")
  EnsurePackage("tm")
  tDF = TweetFrame(term, 100)
  cleantext = CleanTweets(tDF$text)
  tweetCorpus = Corpus(VectorSource(cleantext))
  tweetCorpus = tm_map(tweetCorpus, tolower)
  tweetCorpus = tm_map(tweetCorpus, removePunctuation)
  tweetCorpus = tm_map(tweetCorpus, removeWords, stopwords('english'))
  
  tTDM = TermDocumentMatrix(tweetCorpus)
  tdMatrix = as.matrix(tTDM)
  sortedMatrix = sort(rowSums(tdMatrix), decreasing = TRUE)
  cloudFrame = data.frame(word = names(sortedMatrix), freq = sortedMatrix)
  wordcloud(cloudFrame$word, cloudFrame$freq)

}