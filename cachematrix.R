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


## This function computes the inverse of the special "matrix" returned by
## makeCacheMatrix above. If the inverse has already been calculated
## (and the matrix has not changed), then the cachesolve should retrieve the
## inverse from the cache

cacheSolve <- function( m, ...) {
    minv <- m$getinv()
    if(!is.null(minv)) {
        message("getting cached data")
        return(minv)
    }
    data <- m$get()
    minv <- solve(data, ...)
    m$setinv(minv)
    minv
}
