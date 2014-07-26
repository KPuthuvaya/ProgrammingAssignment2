## function makeCacheMatrix is for creating a list that contains the functins
## for getting the matrix and to cache the inverse.
## cacheSolve returns the inverse either by computing or from 
## the cache if it already exists.

## takes the matrix as input. defines four functions namely, set, get,
## setinv and getinv

makeCacheMatrix <- function(x = matrix()) {

 m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinv <- function(solve) m <<- solve
        getinv <- function() m
        list(set = set, get = get,
             setinv = setinv,
             getinv = getinv)

}


## takes the value returned by the previous function as input
## computes inverse if not in cache else returs inverse from cache.

cacheSolve <- function(x, ...) {

 m <- x$getinv()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setinv(m)
        m



        ## Return a matrix that is the inverse of 'x'
}
