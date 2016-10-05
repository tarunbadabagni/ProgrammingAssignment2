## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

###function despription
The first function, makeCacheMatrix creates a special "Matix", which is really a list containing a function to

    set the value of the Matrix
    get the value of the Matrix
    set the value of the inverse
    get the value of the inverse


makeCacheMatrix <- function(x = matrix()) {
       inv <- NULL
    set <- function(y) {
        x <<- y
        inv <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) inv <<- inverse
    getinverse <- function() inv
list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)  

}


## Write a short comment describing this function
           
###function
 The following function calculates the inverseof the "matrix" created with the above function. However,
 it first checks to see if the inverse has already been calculated. If so, it gets the inverse from the cache and skips
 the computation. Otherwise, it calculates the inverse of the matrix and sets the value of the inverse in the cache via the 
 setmean function.           

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
     inv <- x$getinverse()
    if(!is.null(inv)) {
        message("getting cached data.")
        return(inv)
    }
    data <- x$get()
    inv <- solve(data)
    x$setinverse(inv)
    inv
}
