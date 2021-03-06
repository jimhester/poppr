% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/classes.r
\docType{class}
\name{genclone-class}
\alias{genclone}
\alias{genclone-class}
\alias{snpclone}
\alias{snpclone-class}
\title{GENclone and SNPclone classes}
\description{
\strong{GENclone} is an S4 class that extends the 
  \code{\linkS4class{genind}} object.\cr \strong{SNPclone} is an S4 class
  that extends the \code{\linkS4class{genlight}} object.\cr\cr They will have
  all of the same attributes as their parent classes, but they will contain
  one extra slot to store extra information about multilocus genotypes.
}
\details{
The genclone and snpclone classes will allow for more optimized 
  methods of clone correction.
  
  Previously for \linkS4class{genind} and \linkS4class{genlight} objects, 
  multilocus genotypes were not retained after a data set was subset by 
  population. The new \strong{\code{mlg}} slot allows us to assign the 
  multilocus genotypes and retain that information no matter how we subset 
  the data set. This new slot can either contain numeric values for 
  multilocus genotypes OR it can contain a special internal 
  \code{\linkS4class{MLG}} class that allows for custom multilocus genotype 
  definitions and filtering.
}
\section{Slots}{

\describe{
\item{\code{mlg}}{a vector representing multilocus genotypes for the data set OR an 
object of class \code{\linkS4class{MLG}}.}
}}
\section{Extends}{
 The \code{genclone} class extends class 
  \code{"\linkS4class{genind}"}, directly. \cr The \code{snpclone} class 
  extends class \code{"\linkS4class{genlight}"}, directly.
}
\author{
Zhian N. Kamvar
}
\seealso{
\code{\link{as.genclone}} \code{\link{as.snpclone}} 
  \code{\linkS4class{genind}} \code{\linkS4class{genlight}} 
  \code{\link[adegenet]{strata}} \code{\link[adegenet]{setPop}} 
  \code{\link{MLG}} \code{\link{mll}}
}

