## These two functions invert a matrix using the <<- operator.

## makeCacheMatrix inverts a matrix.

makeCacheMatrix <- function(xMatrix = matrix()) 
{
  xMatrix <- NULL
  
  set <- function(y)
  {
    xMatrix <<- y
    iMatrix <<- NULL
  }
  
  get <- function() xMatrix
  
  # Use the solve function to do the inversion.
  setInverse <- function(solve) xMatrix <<- solve
  
  getInverse <- function() iMatrix
  
  list(set = set, 
       get = get,
       setInverse = setInverse,
       getInverse = getInverse)  
}


## cacheSolve returns an inverted matrix.
# It looks first in the cache.
# If not found in the cache then it creates a new inverted matrix.

cacheSolve <- function(cached_Matrix, ...) 
{
  # Return an inverted matrix of the passed matrix.
  
  iMatrix <- cached_Matrix$get.inverse()
  
  # Look for a chached matrix.
  if(!is.null(iMatrix)) 
  {
    message("Found cached inverse matrix.")
    
    return(iMatrix)
  }
  
  # Else no chached inverted matrix.

#  iMatrix_New <- cached_Matrix$get()
  
#  inverted.matrix <- solve(iMatrix_New)
  
#  cached_Matrix$setInverse(iMatrix)
  
#  iMatrix
}
