## Matrix inversion is usually a costly computation and there may be some benefit
## to caching the inverse of a matrix rather than compute it repeatedly
## In this script you can find a pair of functions that cache the inverse of a matrix.

## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function( m = matrix() ) {
    minv <- NULL
    set <- function(y) {
        m <<- y
        minv <<- NULL
    }
    get <- function() m
    setinv <- function(inv) minv <<- inv
    getinv <- function() minv
    list(set = set, get = get, setinv = setinv, getinv = getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
