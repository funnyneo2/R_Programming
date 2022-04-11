Untitled
================

## GitHub Documents

This is an R Markdown format used for publishing markdown documents to
GitHub. When you click the **Knit** button all R code chunks are run and
a markdown file (.md) suitable for publishing to GitHub is generated.

## Question #1

Q: What will the primary function of the final project be?

A: The final goal is to provide a package that can convert many
different units of measurements into other units of measurement that fit
the scope of its application. For example, (Unit of distance/Unit of
time) would focus on being converted to other distance over time
measurements

``` r
mph2kph <- function(x,y){
  
  y <- x * 1.60934
  return(y)
}

mph2kph(160)
```

    ## [1] 257.4944

##Observation

This is a very basic example, but the main concern I have is developing
a better organizational/naming system for the sheer amount of
conversions that could be available. Perhaps an additional couple of
parameters to specify what “Type” of measurement is being converted
would help cut down on the total amount of functions. For example,
having an additional variable where you can specify things such as
“Time”, “Distance”, “Temperature”, etc. I will need to do some more
thinking regarding it.
