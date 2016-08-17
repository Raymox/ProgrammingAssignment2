## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  invers<-NULL
  #setter matrix

 set<-function(y){
    x<<-y
    invers<<-NULL
  }
# getter for matrix
    get<-function()x
#setter for inverse matrix
    setinvers<-function(inverse) invers<<-inverse 
# getter for inverse matrix
    getinvers<-function() invers
#list of functions 
    list(get=get, set=set, getinvers=getinvers, setinvers=setinvers )
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        invers<-x$getinvers()
        if(!is.null(invers)){
          message("inverse is cached")
          return(invers)
        }
        
               dat<-x$get()
       invers<-solve(dat,...)
       x$setinvers(invers)
       return(invers)
}
