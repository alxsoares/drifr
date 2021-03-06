% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rif_decomposite.R
\name{rif_decomposite}
\alias{rif_decomposite}
\title{This function decomposite the RIF regression result}
\usage{
rif_decomposite(formula, data, flag, idx, method, tau = NULL, kernel = NULL)
}
\arguments{
\item{formula}{formula of RIF regression}

\item{data}{data with varibales}

\item{flag}{variable denotes the decompositing group, flag is the column name of the
variable}

\item{idx}{value of the grouping variable. idx should be a vector with two dimensions.
for example idx = c(1, 2); idx = c(3, 5).}

\item{method}{the distrubiton statistic to calculate recentered influence funciton, which
can be choose from "mean", "quantle", "variance","gini".}

\item{tau}{quantile when using quantile method}

\item{kernel}{kernel used for kernel estimating of the dependent variable, selecting
from "gaussian", "epanechnikov", "rectangular", "triangular", "biweight",
"cosine", "optcosine". Used in quantile method}
}
\description{
This function decomposite the RIF regression result
}
\details{
Given are two groups, A and B; an outcome variable, \eqn{Y}; and a
set of predictors. For example, think of a group of males and a group
of females, (log) wages are the outcome variable, and human capital
indicators such as education and work experience as predictors.
the distribution statistics (\eqn{\nu}) difference of outcome is,
\deqn{R = v(Y_A)-v(Y_B)}
where \eqn{v(Y)} denotes the distribution statistics of the outcome
variable, such as mean, quantile, variance, gini.
Based on the linear model
\deqn{RIF(Y_l) = X_{l}^{'}\beta_l+\epsilon_l, l \in (A, B)}
where \eqn{X} is a vector containing the predictors and a constant, \eqn{\beta}
contains the slope parameters and the intercept, and \eqn{\epsilon} is the error.
The outcome difference can be expressed as:
\deqn{R = v(Y_A)-v(Y_B) = E(X_A)^{'}\beta_A-E(X_B)^{'}\beta_B}
\deqn{R = (E(X_A)-E(X_B))^{'}\beta^{*}+
     (E(X_A)^{'}(\beta_A-\beta^{*})+E(X_B)^{'}(\beta{*}-\beta_B))}
now we have a twofold decomposition.
}
\author{
Wenjing Wang \email{Wenjingwang1990@gmail.com}
}
\references{
Firpo S, Fortin N M, Lemieux T(2009). Unconditional quantile regressions.
\emph{Econometrica}, 77(3): 953-973.
}
\keyword{RIF}

