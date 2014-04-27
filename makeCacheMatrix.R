# This is a function to create the cache of the inverse of a matrix
makeCacheMatrix <- function(x = numeric()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  } # I don't understand well this part of getters and setters
  get <- function() x
  setsolve <- function(solve) m <<- solve
  getsolve <- function() m
  # Next part creates a list of get, set, getsolve an setsolve
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}