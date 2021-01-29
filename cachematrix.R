## What these functions will do is store a matrix and cache its inverse in a special object.

## Here I will create a special matrix to set and get the value of the matrix, and then set and get the value of the inverse.

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
  set <- function(y) {
          x <<- y
          i <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function() i
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)

}


## As for this function, here I will calculate the aforestated matrix's inverse.

cacheSolve <- function(x, ...) {
i <- x$getinverse()
  if (!is.null(i)) {
          message("getting cached data")
          return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinverse(i)
  i}
