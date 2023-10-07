#!/usr/bin/r

# Akaike's An Information Criterion

# Description
# Generic function calculating Akaike's ‘An Information Criterion’ 
# for one or several fitted model objects for which a log-likelihood 
# value can be obtained, according to the formula -2*log-likelihood 
# + k*npar, where npar represents the number of parameters in the 
# fitted model, and k = 2 for the usual AIC, or k = log(n) (n being 
# the number of observations) for the so-called BIC or SBC (Schwarz's 
# Bayesian criterion).

# Usage
# AIC(object, ..., k = 2)

# BIC(object, ...)
# Arguments
# object	
# a fitted model object for which there exists a logLik method to extract 
# the corresponding log-likelihood, or an object inheriting from class logLik.

# ...	
# optionally more fitted model objects.

# k	
# numeric, the penalty per parameter to be used; the default k = 2 
# is the classical AIC.

# Details
# When comparing models fitted by maximum likelihood to the same data, 
# the smaller the AIC or BIC, the better the fit.

# The theory of AIC requires that the log-likelihood has been maximized: 
# whereas AIC can be computed for models not fitted by maximum likelihood, 
# their AIC values should not be compared.

# Examples of models not ‘fitted to the same data’ are where the response 
# is transformed (accelerated-life models are fitted to log-times) and where 
# contingency tables have been used to summarize data.

# These are generic functions (with S4 generics defined in package stats4): 
# however methods should be defined for the log-likelihood function logLik 
# rather than these functions: the action of their default methods is to call 
# logLik on all the supplied objects and assemble the results. Note that in 
# several common cases logLik does not return the value at the MLE: see its 
# help page.

# The log-likelihood and hence the AIC/BIC is only defined up to an additive 
# constant. Different constants have conventionally been used for different 
# purposes and so extractAIC and AIC may give different values (and do for 
# models of class "lm": see the help for extractAIC). Particular care is 
# needed when comparing fits of different classes (with, for example, a 
# comparison of a Poisson and gamma GLM being meaningless since one has 
# a discrete response, the other continuous).

# BIC is defined as AIC(object, ..., k = log(nobs(object))). This needs 
# the number of observations to be known: the default method looks first 
# for a "nobs" attribute on the return value from the logLik method, then 
# tries the nobs generic, and if neither succeed returns BIC as NA.

# Value
# If just one object is provided, a numeric value with the corresponding 
# AIC (or BIC, or ..., depending on k).

# If multiple objects are provided, a data.frame with rows corresponding 
# to the objects and columns representing the number of parameters in the 
# model (df) and the AIC or BIC.

# Author(s)
# Originally by José Pinheiro and Douglas Bates, more recent revisions 
# by R-core.

# References
# Sakamoto, Y., Ishiguro, M., and Kitagawa G. (1986). Akaike Information 
# Criterion Statistics. D. Reidel Publishing Company.

# See Also
# extractAIC, logLik, nobs.

# Examples
lm1 <- lm(Fertility ~ . , data = swiss)
AIC(lm1)
stopifnot(all.equal(AIC(lm1),
                    AIC(logLik(lm1))))
BIC(lm1)

lm2 <- update(lm1, . ~ . -Examination)
AIC(lm1, lm2)
BIC(lm1, lm2)