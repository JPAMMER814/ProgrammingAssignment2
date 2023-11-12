## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Sets up useable functions for the cacheSolve function that enables manipulation of a cached inverse and its matrix 
makeCacheMatrix <- function(x = matrix()) {
        inverse <- NULL
  
  # Set matrix
        setMatrix <- function(new_matrix) {
                x <<- new_matrix
                inverse <<- NULL  # Reset the cached inverse when the matrix changes
  }
  
  # Get matrix
        getMatrix <- function() {
                x
        }
  
  # Set inverse
        setInverse <- function(new_inverse) {
                inverse <<- new_inverse
        }
  
  # Get inverse
        getInverse <- function() {
                inverse
        }
  
  # Return a list of functions to access and manipulate the matrix and its inverse
        list(setMatrix = setMatrix, getMatrix = getMatrix, setInverse = setInverse, getInverse = getInverse)
        }


## Write a short comment describing this function
## Checks if solution exists else solves and stores in cache
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
   # Check if the inverse is already cached
        inverse <- cacheMatrix$getInverse()
        if (!is.null(inverse)) {
                message("Getting cached data.")
                print('go')
        return(inverse)
  }
  
  # If not cached, calculate the inverse
        matrix_data <- cacheMatrix$getMatrix()
        inverse <- solve(matrix_data, ...)
  
  # Cache the inverse
        cacheMatrix$setInverse(inverse)
  
  # Return the calculated inverse
        inverse     
}
