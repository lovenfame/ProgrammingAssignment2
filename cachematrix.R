## This function would retrieve caches matrix. 
## If one is not present, it will call CacheSoleve fucntion, set to cache for next time and return.

makeCacheMatrix <- function(x = matrix()) {
    message("Inside makeCacheMatrix. setting m as null")
    m <- NULL
    getinverse <- function() {
        message("Inside getInverse")
        m
    }
    setinverse <- function(inv){
        message("Inside setInverse")
        m <<- inv
    }
}


## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
## If the inverse has already been calculated (and the matrix has not changed), 
## then cacheSolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    ##x1 <- makeCacheMatrix(x)
    m <- x$getinverse()
    if(!is.null(m)) {
        message("getting cached data")
        return(m)
    }
    message("Solving x")
    m <- solve(x)
    message("ready to set inverse")
    x$setinverse(m)
}
