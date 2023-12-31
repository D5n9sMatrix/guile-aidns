#!/usr/bin/r

# Scaling and Centering of Matrix-like Objects

# Description
# scale is generic function whose default method centers and/or scales 
# the columns of a numeric matrix.

# Usage
# scale(x, center = TRUE, scale = TRUE)

# Arguments
# x	
# a numeric matrix(like object).

# center	
# either a logical value or numeric-alike vector of length equal to the number 
# of columns of x, where ‘numeric-alike’ means that as.numeric(.) will be applied 
# successfully if is.numeric(.) is not true.

# scale	
# either a logical value or a numeric-alike vector of length equal to the number 
# of columns of x.

# Details
# The value of center determines how column centering is performed. If center is 
# a numeric-alike vector with length equal to the number of columns of x, then 
# each column of x has the corresponding value from center subtracted from it. 
# If center is TRUE then centering is done by subtracting the column means 
# (omitting NAs) of x from their corresponding columns, and if center is FALSE, 
# no centering is done.

# The value of scale determines how column scaling is performed (after centering). 
# If scale is a numeric-alike vector with length equal to the number of columns 
# of x, then each column of x is divided by the corresponding value from scale. 
# If scale is TRUE then scaling is done by dividing the (centered) columns 
# of x by their standard deviations if center is TRUE, and the root mean 
# square otherwise. If scale is FALSE, no scaling is done.

# The root-mean-square for a (possibly centered) column is defined as 
# sqrt(sum(x^2)/(n-1)), where x is a vector of the non-missing values 
# and n is the number of non-missing values. In the case center = TRUE, 
# this is the same as the standard deviation, but in general it is not. 
# (To scale by the standard deviations without centering, use scale(x, 
# center = FALSE, scale = apply(x, 2, sd, na.rm = TRUE)).)

# Value
# For scale.default, the centered, scaled matrix. The numeric centering 
# and scalings used (if any) are returned as attributes "scaled:center" 
# and "scaled:scale"

# References
# Becker, R. A., Chambers, J. M. and Wilks, A. R. (1988) The New S Language. 
# Wadsworth & Brooks/Cole.

# See Also
# sweep which allows centering (and scaling) with arbitrary statistics.

# For working with the scale of a plot, see par.

# Examples
require(stats)
x <- matrix(1:10, ncol = 2)
(centered.x <- scale(x, scale = FALSE))
cov(centered.scaled.x <- scale(x)) # all 1