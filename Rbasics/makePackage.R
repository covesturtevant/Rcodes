
# Define Package Name -----------------------------------------------------

pdir <- "C:/Users/csturtevant/Documents/R/Rcodes/"
pname = "plotFuncs"

# Load required packages
library("devtools","roxygen2")

# Create the Package --------------------------------------------------------

# Set the working directory
setwd(pdir)

# Test if package name exists, if so let's stop
dlist <- dir(path=".",pattern=pname,full.names=FALSE)
stopifnot(length(which(pname==dlist)) == 0)

# Create package (adjust name here)
create(pname)


# Package it up & Install it ---------------------------------------------

# 1. *** Make sure to adjust the contents of the DESCRIPTION file ***
# 2. Add comments to the beginning of each function with the format: #'  -- These
#    will be used to create help documentation using the roxygen2 package 

setwd(paste0(pdir,pname))

# Create documentation
document()

# Install the package
install(pname)