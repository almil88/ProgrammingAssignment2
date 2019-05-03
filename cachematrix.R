## makeCacheMatrix gets a matrix, sets a value and gets the 
## inverse matrix 


makeCacheMatrix <- function(x = matrix()) {
  invMatrix <- NULL
  
  setMatrix <- function(y) {
    x <<- y
    invMatrix <<-NULL
  }
  getMatrix <- function() x
  setInverse <- function(inverse) invMatrix <<- inverse
  getInverse <- function() invMatrix
  list(setMatrix = setMatrix, getMatrix = getMatrix,
       setInverse = setInverse, getInverse = getInverse)
}



## The function cacheSolve takes matrix's output, checks if the matrix has any value in it
#If it's empty it gets the original matrix data
#if it has a value it uses the solve function 

cacheSolve <- function(x, ...) {
  invMatrix <- x$getInverse()
  if(!is.null(invMatrix)) {
    message("Cached Invertible Matrix")
  }
  MatrixData <- x$getMatrix()
  invMatrix <- solve(MatrixData, )
  return(invMatrix)
}
