% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mc_getInformation.R
\name{mc_getInformation}
\alias{mc_getInformation}
\title{Getting information about model parameters}
\usage{
mc_getInformation(list_initial, list_power_fixed, n_resp)
}
\arguments{
\item{list_initial}{A list of initial values.}

\item{list_power_fixed}{A list of logical specyfing if the power
parameters should be estimated or not.}

\item{n_resp}{A number specyfing the nmber of response variables.}
}
\value{
The number of \eqn{\beta}'s, \eqn{\tau}'s, power and
    correlation parameters.
}
\description{
This computes all information required about the number
    of model parameters.
}
\author{
Wagner Hugo Bonat
}
\keyword{internal}

