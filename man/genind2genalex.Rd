% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/file_handling.r
\name{genind2genalex}
\alias{genind2genalex}
\title{Exporting data from genind objects to genalex formatted *.csv files.}
\usage{
genind2genalex(gid, filename = "genalex.csv", quiet = FALSE, pop = NULL,
  allstrata = TRUE, geo = FALSE, geodf = "xy", sep = ",")
}
\arguments{
\item{gid}{a \code{\linkS4class{genclone}} or \code{\linkS4class{genind}}
object.}

\item{filename}{a string indicating the name and/or path of the file you wish
to create.}

\item{quiet}{\code{logical} If \code{FALSE} a message will be printed to the 
screen.}

\item{pop}{a character vector OR formula specifying the population factor. 
This can be used to specify a specific subset of strata or custom 
population factor for the output. Note that the \code{allstrata} command 
has precedence over this unless the value of this is a new population
factor.}

\item{allstrata}{if this is \code{TRUE}, the strata will be combined into a
single population factor in the genalex file.}

\item{geo}{\code{logical} Default is \code{FALSE}. If it is set to 
\code{TRUE}, the resulting file will have two columns for geographic data.}

\item{geodf}{\code{character} Since the \code{other} slot in the adegenet 
object can contain many different items, you must specify the name of the 
data frame in the \code{other} slot containing your geographic coordinates.
It defaults to "xy".}

\item{sep}{a character specifying what character to use to separate columns. 
Defaults to ",".}
}
\description{
genind2genalex will export a genclone or genind object to a *.csv file
formatted for use in genalex.
}
\note{
If you enter a file name that exists, that file will be overwritten. If
  your data set lacks a population structure, it will be coded in the new 
  file as a single population labeled "Pop". Likewise, if you don't have any
  labels for your individuals, they will be labeled as "ind1" through 
  "ind\emph{N}", with \emph{N} being the size of your population.
}
\examples{
\dontrun{
data(nancycats)
genind2genalex(nancycats, "~/Documents/nancycats.csv", geo=TRUE)
}
}
\author{
Zhian N. Kamvar
}
\seealso{
\code{\link{clonecorrect}}, \code{\linkS4class{genclone}} or
  \code{\linkS4class{genind}}
}

