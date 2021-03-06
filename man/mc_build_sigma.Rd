% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mc_build_sigma.R
\name{mc_build_sigma}
\alias{mc_build_sigma}
\title{Build variance-covariance matrix}
\usage{
mc_build_sigma(mu, Ntrial = 1, tau, power, Z, sparse, variance, covariance,
  power_fixed, compute_derivative_beta = FALSE)
}
\arguments{
\item{mu}{A numeric vector. In general the output from
\code{\link{mc_link_function}}.}

\item{Ntrial}{A numeric vector, or NULL or a numeric specifing the
number of trials in the binomial experiment. It is usefull only
when using variance = binomialP or binomialPQ. In the other cases
it will be ignored.}

\item{tau}{A numeric vector.}

\item{power}{A numeric or numeric vector. It should be one number for
all variance functions except binomialPQ, in that case the
argument specifies both p and q.}

\item{Z}{A list of matrices.}

\item{sparse}{Logical.}

\item{variance}{String specifing the variance function: constant,
tweedie, poisson_tweedie, binomialP or binomialPQ.}

\item{covariance}{String specifing the covariance function: identity,
inverse or expm.}

\item{power_fixed}{Logical if the power parameter is fixed at initial
value (TRUE). In the case power_fixed = FALSE the power parameter
will be estimated.}

\item{compute_derivative_beta}{Logical. Compute or not the derivative
with respect to regression parameters.}
}
\value{
A list with the Cholesky decomposition of \eqn{\Sigma},
    \eqn{\Sigma^{-1}} and the derivative of \eqn{\Sigma} with respect
    to the power and tau parameters.
}
\description{
This function builds a variance-covariance matrix, based
    on the variance function and omega matrix.
}
\author{
Wagner Hugo Bonat
}
\seealso{
\code{\link{mc_link_function}},
    \code{\link{mc_variance_function}}, \code{\link{mc_build_omega}}.
}
\keyword{internal}

