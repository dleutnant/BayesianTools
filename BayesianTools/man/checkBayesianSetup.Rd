% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/classBayesianSetup.R
\name{checkBayesianSetup}
\alias{checkBayesianSetup}
\title{Checks if an object is of class 'BayesianSetup'}
\usage{
checkBayesianSetup(bayesianSetup, parallel = F)
}
\arguments{
\item{bayesianSetup}{either object of class bayesianSetup or a log posterior function}

\item{parallel}{if bayesianSetup is a function, this will set the parallelization option for the class BayesianSetup that is created internally. If bayesianSetup is already a BayesianSetup, then this will check if parallel = T is requested but not supported by the BayesianSetup. This option is for internal use in the samplers}
}
\description{
Function used to assure that an object is of class 'BayesianSetup'. If you pass a function, it is coverted to an object of class 'BayesianSetup' (using \code{\link{createBayesianSetup}}) before it is returned.
}
\note{
The recommended option to use this function in the samplers is to have parallel with default NULL in the samplers, so that checkBayesianSetup with a function will create a bayesianSetup without parallelization, while it will do nothing with an existing BayesianSetup. If the user sets parallelization, it will set the approriate parallelization for a function, and check in case of an existing BayesianSetup. The checkBayesianSetup call in the samplers should then be followed by a check for parallel = NULL in sampler, in which case paralell can be set from the BayesianSetup
}
\seealso{
\code{\link{createBayesianSetup}}
}

