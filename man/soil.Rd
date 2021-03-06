% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mcglm.R
\docType{data}
\name{soil}
\alias{soil}
\title{Soil Chemistry Properties Data}
\format{a \code{data.frame} with 250 records and 9 variables.}
\source{
Bonat, W. H. (2016). Multiple Response Variables Regression
Models in R: The mcglm Package. Journal of Statistical Software, submitted.
}
\usage{
data(soil)
}
\description{
Soil chemistry properties measured on a regular grid with
10 x 25 points spaced by 5 meters.

\itemize{

\item \code{COORD.X} - X coordinate.

\item \code{COORD.Y} - Y coordinate.

\item \code{SAND} - Sand portion of the sample.

\item \code{SILT} - Silt portion of the sample.

\item \code{CLAY} - Clay portion of the sample.

\item \code{PHWATER} - Soil pH at water.

\item \code{CA} - Calcium content.

\item \code{MG} - Magnesium content.

\item \code{K} - Potassio content.
}
}
\examples{
\donttest{
data(soil, package="mcglm")
neigh <- tri2nb(soil[,1:2])
Z1 <- mc_car(neigh)
# Linear predictor
form.ca <- CA ~ COORD.X*COORD.Y + SAND + SILT + CLAY + PHWATER
fit.ca <- mcglm(linear_pred = c(form.ca), matrix_pred = list(Z1),
               link = "log", variance = "tweedie", covariance = "inverse",
               power_fixed = FALSE, data = soil,
               control_algorith = list(max_iter = 500, tunning = 0.1))
summary(fit.ca)
# Conditional hypothesis test
mc_conditional_test(fit.ca, parameters = c("power11","tau11","tau12"),
                   test = 2:3, fixed = 1)
# Spatial autocorrelation
mc_compute_rho(fit.ca)
}

}
\keyword{datasets}

