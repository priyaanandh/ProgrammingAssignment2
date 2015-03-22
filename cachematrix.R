## Function to find inverse of a matrix
## Store the inverse of the matrix
## Retrieve from cache

##cachematrix function reads x and the funtion to be performed on x
cachematrix <- function(x = matrix()) {
  m<-NULL
  set<-function(y){
       x<<-y
       m<<-NULL
  }
  
  get<-function() x
  setmatrix<-function(solve) m<<- solve
  getmatrix<-function() m
  list(set=set, get=get,
       setmatrix=setmatrix,
       getmatrix=getmatrix)
}




## Function cachesolve
## Check for change in data
## If cache does not have result compute and return the result


cacheSolve <- function(x, ...) {
        
  m<-x$getmatrix()
  
## if result already exists retrieve from   cache
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  
## find the inverse of x -- no previous results in cache
  matrix<-x$get()
  m<-solve(matrix)
  
  x$setmatrix(m)
  ## Return a matrix that is the inverse of 'x'
  m
}
