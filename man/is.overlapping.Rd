% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/intervalaverage_functions.R
\name{is.overlapping}
\alias{is.overlapping}
\title{Test for self-overlap}
\usage{
is.overlapping(x, interval_vars, group_vars = NULL, verbose = FALSE)
}
\arguments{
\item{x}{A data.table with two columns defining closed intervals (see also interval_vars).}

\item{interval_vars}{A length-2 character vector corresponding to column names of x which designate
the closed (inclusive) starting and ending intervals. The column name
specifying the lower-bound column must be specified first.}

\item{group_vars}{NULL or a character vector corresponding to column names of x.
overlap checks will occur within groups defined by the columns specified here.}

\item{verbose}{prints additional information, default is FALSE}
}
\value{
length-1 logical vector. TRUE if there are overlaps, FALSE otherwise.
}
\description{
Test whether a data.table contains intervals which partially or completely overlap
with other intervals in different rows, possibly within groups
}
\examples{
x <- data.table(start=c(1,2),end=c(3,4))
is.overlapping(x,c("start","end")) #the interval 1,3 overlaps with the interval 2,4
y <- data.table(start=c(1,3),end=c(2,4))
is.overlapping(y,c("start","end")) #the interval 1,2 doesn't overlap other intervals in y
z <- data.table(start=c(1,3,1,2),end=c(2,4,3,4),id=c(1,1,2,2))
is.overlapping(z,c("start","end"),"id")
}
