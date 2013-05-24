mySamplingDistribution = function (l, s, it)
  {
   return replicate(it, mean(sample(l, size = s, replace = TRUE)), simplify = TRUE)
  }