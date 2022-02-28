#Module #7
library("dplyr")
library("plyr")
data("airquality")
head(airquality,6)
list(airquality,6)

objectType <- function(x) {

  print("Is it a base object?")
  print(!is.object(x))
  print("Is it an S3 object?")
  print(!isS4(x))
  print("Is it an S4 object?")
  print(!is(x, "refClass"))  
  }

objectType(airquality)

##EXAMPLES OF S3 AND S4
#S3 Example
test <- list(Structure = "Apartment11", Built = 1982, Height = 15)
class(test) <- "Housing"
objectType(test)
#!isS4 returns TRUE, so it is an S3 Object
pryr::otype(test)

#S4 example
setClass("test",representation(x1="numeric",x2="numeric"))
test2 <- new("test",x1=rnorm(10),x2=rnorm(10))
objectType(test2)
#!isS4 returns FALSE, and !is(x, "refClass") returns TRUE, so its an S4 Object
pryr::otype(test2)
