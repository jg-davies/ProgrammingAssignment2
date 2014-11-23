## cachematrix contanins functions to cache a matix and its inverse

## Create a data structure to hold a matrix and its inverse

makeCacheMatrix <- function(x = numeric()) {
  savedinv <- NULL
  set <- function(y) {
    x <<- y
    savedinv <<- NULL
  }
  get <- function() x
  setsolve <- function(myinv) savedinv <<- myinv
  getsolve <- function() savedinv
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}


## Recover the cached inverse, calculate and save inverse if necessary.
## This will return a matrix that is the inverse of 'x'.
## If the inverse has already been calculated then the cached inverse will be used.

cacheSolve <- function(x, ...) {
  savedinv <- x$getsolve()
  if(!is.null(savedinv)) {
    message("getting cached data")
    return(savedinv)
  }
  data <- x$get()
  savedinv <- solve(data, ...)
  x$setsolve(savedinv)
  savedinv


  
  
        ## Return a matrix that is the inverse of 'x'
}
