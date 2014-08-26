% Generated by roxygen2 (4.0.1): do not edit by hand
\name{pgen}
\alias{pgen}
\title{Calculates and returns a matrix of Pgen values for the given genlight object.
Each column represents a genotype in the genlight objects, and each row
represents a specific, sequential set of 8 base pairs. The values in each cell
represent the Pgen value of the corresponding set of base pairs. These values
indicate the probability of observing these alleles in a randomly mating
population using estimates derived from the genotypes present in the genlight
object.}
\usage{
pgen(x, log = TRUE, by.pop = TRUE, window.size = 1)
}
\arguments{
\item{x}{a genlight object.}

\item{log}{a \code{logical} to determine whether the values should be returned
 as percentages or logarithms of percentages. \code{TRUE} is the default, and
 returns the logarithmic values rather than the percentage values. This option has
 a much larger range and is highly recommended. \code{FALSE} returns the percentage
 chance for each genotype to be produced via random mating, rather than the log
 equivalent.}

\item{by.pop}{a \code{logical} to determine whether allelic frequencies should
 be calculated per population (\code{TRUE}, default) or across all populations
 in the data (\code{FALSE}).}

\item{window.size}{an \code{integer} to determine how many SNPs should be
 included in each pgen calculation. The default is 1, causing every SNP to
 have its own pgen value in the result matrix. Higher values can be used
 to reduce matrix size, but may result in precision errors if pgen values are
 too small. This argument only affects processing of genlight objects.}
}
\value{
A vector containing one Pgen value for each genotype in the genlight object.
}
\description{
Calculates and returns a matrix of Pgen values for the given genlight object.
Each column represents a genotype in the genlight objects, and each row
represents a specific, sequential set of 8 base pairs. The values in each cell
represent the Pgen value of the corresponding set of base pairs. These values
indicate the probability of observing these alleles in a randomly mating
population using estimates derived from the genotypes present in the genlight
object.
}
\author{
Zhian N. Kamvar, Jonah Brooks
}
