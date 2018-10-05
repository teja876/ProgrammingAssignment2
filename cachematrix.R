##  Our aim in this experiment is to write a pair of functions, namely, 
## functions do	## "makeCacheMatrix" and "cacheSolve" that cache the inverse of a matrix

## makeCacheMatrix is a function which creates a special "matrix" object that can 
## cache its inverse for the input (which is an invertible square matrix)

makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set<-function(y)
  {
    x<-y
    m<-NULL
  }
  get<-function() x
  setinv<-function(inverse) inver<<-inverse
  getinv<- function() inver
  list(set=set,get=get,setinv=setinv,getinv=getinv)
  
}


## cacheSolve is a function which computes the inverse of the special "matrix" 

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inv<-x$getinv()
  if(!is.null(inv))
  {
    return(inv)
  }
  data<-x$get()
  inv<-solve(data)
  x$setinv(inv)
  inv
}
