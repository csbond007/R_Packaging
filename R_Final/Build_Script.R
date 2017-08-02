
############################################
## Dev-Ops Tools

# helps with building R packages
install.packages("devtools")
library('devtools')

update.packages()

# roxygen2 for documenting your functions 
install.packages("roxygen2")
,dependencies = T)
require('roxygen2')

library(utils)
remove.packages('roxygen2')

library(utils)
uninstall.packages('roxygen2')

############################################
## Set the Current Working Directory
setwd('C:/Users/Kaustav Saha/Desktop/Pre-Sales/STI/R_Final/')

###############################################

#### Create Framework for R package
devtools::create("myRPackage")

###############################################

#' ## Once you've got your documentation completed, you can simply run:
devtools::document()










