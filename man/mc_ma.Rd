% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mc_ma.R
\name{mc_ma}
\alias{mc_ma}
\title{Moving Average Models Structure}
\source{
Bonat, W. H. (2016). Multiple Response Variables Regression
Models in R: The mcglm Package. Journal of Statistical Software, submitted.
}
\usage{
mc_ma(id, time, data, order = 1)
}
\arguments{
\item{id}{name of the column (string) containing the subject index.
Note that this structure was designed to deal with longitudinal data.
For times series data use the same \code{id} for all observations
(one unit sample).}

\item{time}{name of the column (string) containing the index indicating
the time.}

\item{data}{data set.}

\item{order}{order of the moving average process.}
}
\value{
A matrix of \code{dgCMatrix} class.
}
\description{
The function \code{mc_ma} helps to build the components
of the matrix linear predictor associated with moving average models.
This function is generaly used for the analysis of longitudinal and
times series data. The user can specify the order of the moving
average process.
}
\details{
This function was designed mainly to deal with longitudinal
data, but can also be used for times series analysis. In that case,
the \code{id} argument should contain only one index. It pretends a
longitudinal data taken just for one individual or unit sample. This
function is a simple call of the \code{\link[Matrix]{bandSparse}}
function from the \code{Matrix} package.
}
\examples{
id <- rep(1:2, each = 4)
time <- rep(1:4, 2)
data <- data.frame("id" = id, "time" = time)
mc_ma(id = "id", time = "time", data = data, order = 1)
mc_ma(id = "id", time = "time", data = data, order = 2)

}
\author{
Wagner Hugo Bonat, \email{wbonat@ufpr.br}
}
\seealso{
\code{mc_id}, \code{mc_dist}, \code{mc_car},
\code{mc_rw} and \code{mc_mixed}.
}

