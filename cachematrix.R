## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inversedMartix <- NULL
  set <- function(y) {
    x <<- y
    inversedMartix <<- NULL
  }
  get <- function() x
  setInversedMartix <- function(inversedMartixParam) inversedMartix <<- inversedMartixParam
  getInversedMatrix <- function() inversedMartix
  list(set = set, get = get,
       setInversedMartix = setInversedMartix,
       getInversedMartix = getInversedMatrix)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inversedMartix <- x$getInversedMartix()
  if(!is.null(inversedMartix)) {
    message("getting cached inveresed matrix data")
    return(inversedMartix)
  }
  data <- x$get()
  inversedMartix <- solve(data, ...)
  x$setInversedMartix(inversedMartix)
  inversedMartix
}
