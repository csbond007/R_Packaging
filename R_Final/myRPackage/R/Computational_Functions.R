#'  create an .R file that has the same name as the function you want in it.
#'  Grouping Multiple Related Functions in the same file
#'  These functions to be "exposed" to users to use
#'  Using the following Roxygen tag
#'  This ensures that these functions gets added to the 
#'  NAMESPACE (when you run devtools::document()) 
#'  to indicate that it needs to be exposed.
#'
#' @export
#'  Never use library() or require() in a R package!
#'  Extra packages can be added to the 
#'  Depends section of the DESCRIPTION file instead of the Imports section. 
#'  In the Depends section, packages are loading and attached 
#'  while packages in the Imports section are only loaded.
#'
sumFunction <- function(a,b){
  #'  
  #'  External Dependency Added in the DESCRIPTION file 
  #'  under the Imports content 
  tictoc::tic() 
  #'
  rnorm(1000,0,1)
  exectime <- tictoc::toc()
  exectime <- exectime$toc - exectime$tic
  print(exectime)
  return(a+b)
  #'
}
#'
productFunction <- function(a,b){
  return(a*b)
}
#'
#' ########### EOF #############################
#' devtools::document()
#'