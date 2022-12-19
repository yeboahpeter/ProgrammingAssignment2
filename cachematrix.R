## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
The function will create a special "matrix" object that create its inverse. 
makeCacheMatrix <- function(x = matrix()) {
inv <- NULL
set <- function(y) {
        x <<- y
        inv <<- NULL
}
get <- function() x
        setinverse <- function(inverse) i <<- inverse
        getinverse <- function() i
        list(set = set, get = get,
        setinverse = setinverse,
        getinverse = getinverse)
}

## Write a short comment describing this function
The function computes the inverse of the special "matrix" returned by the makechahematrix above.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
 inv <- x$getInverse()
        if (!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        mat <- x$get()
        inv <- solve(mat, ...)
        x$setInverse(inv)
        inv    
}
