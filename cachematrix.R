
## In this code we have functions that cache inverse of a matrix
## This is a code for programming assignment 2 for R programming
## in Coursera from John Hopkings University


## Creates a matrix that can cache its inverse
makeCacheMatrix <- function( x = matrix() ) {
  
  i <- NULL
  
  ##set the matrix
  
  set <- function( matrix ) {
    x <<- matrix
    i <<- NULL
  }
  
  ##get the matrix
  get <- function() {
   
    x   ## returning the matrix
  }
  
  ##set the inverse of the matrix
  
  setInverse <- function(inverse) {
    i <<- inverse
  }
  
  ##get the inverse of the matrix
  
  getInverse <- function() {
    
    i   ## return the inverse
  }
  
  
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}



cacheSolve <- function(x, ...) {
  
  m <- x$getInverse()
  
  
  if( !is.null(m) ) {
    message("getting cached data")
    return(m)
  }
  
  
  data <- x$get()   ## get the matrix
  
  
  m <- solve(data) %*% data
  
  ## Set the inverse 
  
  x$setInverse(m)
  
  
  m
}

