# This is a function to solve the inverse of a matrix
cacheSolve <- function(x, ...) {
  m <- x$getsolve()   # If there is data in cache, then nothing is done
  if(!is.null(m)) {
    message("getting cached data")
    return(m) #Stop execution and return the cache value
  }
  data <- x$get() 
  m <- solve(data, ...) # If cacheSolve can't find a value in cache, then inverse 
  x$setsolve(m)
  m  # Return m, as the inverse of x matrix
}