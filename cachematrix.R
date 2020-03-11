
## This is a assignment for caching the Inverse of a Matrix

## Below are a pair of functions solution

## This function creates a matrix object that can cache its inverse.



makeCacheMatrix <- function(x = matrix()) {
  a <- NULL
  b <- function(y) {
    x <<- y
    a <<- NULL
  }
  c <- function() x
  ba <- function(inverse) a <<- inverse
  ca <- function() a
  list(b = b,
       c = c,
       ba = ba,
       ca = ca)
}


## This function computes the inverse of the "matrix" 


cacheSolve <- function(x, ...) {
  a <- x$ca()
  if (!is.null(a)) {
    message("get the cached data")
    return(a)
  }
  d <- x$c()
  a <- solve(d, ...)
  x$ba(a)
  a
}
