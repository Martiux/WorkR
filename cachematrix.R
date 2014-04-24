## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
mim<- NULL
    set <- function(y) {
        x <<- y
        mim <<- NULL
    }
    get <- function() x
    setmim <- function(solve) mim <<- solve
    getmim <- function() mim
    list(set = set, get = get,
         setmim = setmim,
         getmim = getmim)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        mim <- x$getmim()
    if(!is.null(mim)) {
        message("getting cached data")
        return(mim)
    }
    data <- x$get()
    mim <- solve(data, ...)
    x$setmim(mim)
    mim
}
