# Code to look at Level 1 data downloaded from the portal

# Load in Packages --------------------------------------------------------
library(ggplot2) 
library(plotFuncs)

# Load in Data ------------------------------------------------------------

rm(list=ls()) # Clear workspace

# Specify the data directory and data file
datadir = "C:/Users/csturtevant/Documents/NEON/Data/Level1Data/BP/D13_Southern/MOAB/SeaLevelCorrected/"
datafile = "NEON.D13.MOAB.DP1.00004.001.00000.000.035.001.BP_1min.csv"

# Read the data into a data frame. Data frames can have columns with different data types.
# Can access D with regular matrix notation, but also with D$columnname
D <- read.csv(paste0(datadir,datafile))

# Convert date strings
# There are two basic classes of date/times. Class "POSIXct" represents the (signed) number of seconds 
# since the beginning of 1970 (in the UTC time zone) as a numeric vector. Class "POSIXlt" is a named list 
# of vectors representing sec, min, hour,mdate,mon,year...
ts <- strptime(D$startDateTime,format="%Y-%m-%dT%H:%M:%SZ",tz="GMT") 
D$ts <- ts # Add to data frame
  
# View Data ---------------------------------------------------------------
vname <- "staPresMean"
QFname <- "staPresFinalQF"

# Create plot objects
p1 <- ggplot(D,aes(x=D$ts,y=D[,vname])) + geom_line() # Main variable
p2 <- ggplot(D,aes(x=D$ts,y=D[,QFname])) + geom_line() # Main variable

# plot them
multiplot(p1,p2,cols=1)



