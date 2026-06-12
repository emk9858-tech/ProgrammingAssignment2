

## COURSERA PROGRAMMING ASSIGNMENT #2

## R PROGRAMMING COURSE #### 

###JUNE 2026#####


## This function will create a matrix of getters and setters
##results from cache instead of recalculating


makeCacheMatrix <- function(x = matrix()) {
  # initialize the inverse to NULL
  inv <- NULL 
  # setter for matrix
  set <- function(y) {
    mat <<- mtrx 
    inv <<- NULL
  }
  # getter for matrix
  get <- function() mat
  
  # setter for the inverse
  set.inverse <- function(setinv) inv <<- setinv
  
  # getter for the inverse
  get.inverse <- function() inv
 
   #returns a list of getter and setter functions
  list(set = set, get = get,
       set.inverse = set.inverse,
       get.inverse = get.inverse)
}


## Write a short comment describing this function

cacheSolve <- function(x,...) {
    # returns a matrix that is the inverse of 'x'
    inv <- x$getinverse()
    # if it exists, it will return with
    if(!is.null(inv)) {
      message("getting cached data")
      return(inv)
    }
    # else calculate, store and return it
    data <- x$get()
    inv <- solve(data, ...)
    x$setinverse(inv)
    inv
    
    # returns the inverse
    inv
  }

