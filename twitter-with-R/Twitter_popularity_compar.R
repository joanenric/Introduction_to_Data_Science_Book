twitter_popularity_comparison = function (term1, term2, n = 500) {
  print (n)
  tweets1 = TweetFrame (term1, n)
  tweets2 = TweetFrame (term2, n)
  eventDelay1 = as.integer(diff(tweets1$created))
  eventDelay2 = as.integer(diff(tweets2$created))
  below_mean1 = sum(eventDelay1 <= mean(eventDelay1))
  below_mean2 = sum(eventDelay2 <= mean(eventDelay1)) #with reference to 1
  a = poisson.test(below_mean1, n)$conf.int
  b = poisson.test(below_mean2, n)$conf.int
  
  barplot2(c(below_mean1/n, below_mean2/n), ci.l = c(a[1], b[1]), ci.u = c(a[2], b[2]), plot.ci = TRUE, names.arg = c(term1, term2))
  poisson.test(c(below_mean1, below_mean2), c(500, 500))
}