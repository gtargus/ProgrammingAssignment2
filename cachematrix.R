## The purpose of this assignment is to write 2 functions 
## that ,by using caching ,will compute the inverse of a matrix 

## makeCacheMatrix:This function creates a special "matrix" object that can cache its inverse. 


makeCacheMatrix <- function(x = matrix()) {
inv <- NULL
set <-function(y) {
	x<<-y
	inv<<-NULL

}
get <-function() x
setinverse <-function(inverse) inv <<-inverse
getinverse <-function() inv
list(set=set, get=get,setinverse=setinverse,getinverse=getinverse)
}

## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. If the inverse has  
## already been calculated (and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache.


cacheSolve <- function(x, ...) {

       Sol <- x$getinverse()
       if(!is.null(Sol))
{

      message("getting cached data")
      return(Sol)
}
     data<- x$get()
     Sol <-solve(data)
     x$setinverse(Sol)
        ## Return a matrix that is the inverse of 'x'
     Sol
}
