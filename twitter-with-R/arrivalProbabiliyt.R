ArrivalProbability = function(times,increment,max){
  
  plist = NULL
  timeLen = length(times)
  if (increment>max) {return (NULL)}
  
  for (i in seq(increment,max, by=increment)) {
    plist = c(plist,(sum(as.integer(diff(times))<i))/timeLen)
  }
  return (plist)
}