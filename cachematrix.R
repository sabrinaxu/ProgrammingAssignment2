## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
Inv <- NULL  #give Inv as NULL to start with#
set <- function (y) {
  x <<- y
  Inv <<- NULL
}  #define set function
get <- function () x #define get function
setInv <- function (inverse) Inv <<- inverse
getInv <- function () Inv
list (set = set, get = get, getInv = getInv, setInv = setInv)
}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  Inv <- x$getInv()
  if (!is.null(Inv)) {
    message("getting cached data")
    return(Inv)
  }  #if calculated before, return cached data
  mat <- x$get()
  Inv <- solve(mat, ...) # calculate inverse 
  x$setInv(Inv) 
  Inv
}
