## Put comments here that give an overall description of what your
## functions do

## This function creates a "special Matrix" that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
inv <- NULL
  
  set <- function(y) {
    
    
    x <<- y
    
    
    inv <<- NULL
  }
  get <- function() x
  
  SetInverse <- function(inverse) inv <<- inverse
  GetInverse <- function() inv
  list(Get = Get,
       Get = Get,
       SetInverse = SetInverse,
       GetInverse = GetInverse)
}



## This function computes the inverse of the matrix created above, if already calculated it will get the inverse from the cache

cacheSolve <- function(x, ...) {


inv <- x$getInverse()
if (!is.null(inv)) {
  message("getting cached data")
  return(inv)
}
mat <- x$get()
inv <- solve(mat, ...)
x$setInverse(inv)
inv

        ## Return a matrix that is the inverse of 'x'
}
