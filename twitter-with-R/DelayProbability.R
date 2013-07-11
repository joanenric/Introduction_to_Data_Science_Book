DelayProbability = function (delays, increment, max) {
  plist = NULL
  
  delayLen = length(delays)
  if (increment>max) {return (NULL)}
  for (i in seq(increment, max, by=increment)) {
    plist = c(plist,(sum(delays<=i)/delayLen))
  }
  return (plist)
}