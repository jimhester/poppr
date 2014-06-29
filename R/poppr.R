#==============================================================================#
#' The \pkg{poppr} R package.
#' 
#' @description \pkg{Poppr} provides tools for population genetic analysis that
#' include genotypic diveristy measures, genetic distances with bootstrap
#' support, native organization and handling of population hierarchies, and
#' clone correction.
#' 
#' To cite \pkg{poppr}, please use \code{citation("poppr")}. When referring to
#' \pkg{poppr} in your manuscript, please use lower case unless it occurs at the
#' beginning of a sentence.
#' 
#' @details This package relies on the \pkg{\link[adegenet]{adegenet}} package.
#' It was built around the \code{\linkS4class{genind}} object, which stores
#' genetic information in a table of allele frequencies. \pkg{Poppr} has
#' extended this object into a new object called \code{\linkS4class{genclone}}.
#' This object tracks clones and organizes different population hierarchical
#' levels.
#' 
#' \subsection{Documentation}{ Documentation is available for any function by
#' typing \code{?function_name} in the R console. Essential functions for
#' manipulating data are detailed within the \emph{Data import and manipulation}
#' vignette (\code{vignette("poppr_manual", package = "poppr")}) and details on 
#' algorithms used in \pkg{poppr} are within the \emph{Algorithms and equations}
#' vignette (\code{vignette("algo", package = "poppr")}). }
#' 
#' \subsection{Getting help}{ If you have a specific question or issue with 
#' \pkg{poppr}, feel free to contribute to the google group at 
#' \url{https://groups.google.com/forum/#!forum/poppr}. If you find a bug and 
#' are a github user, you can submit bug reports at 
#' \url{https://github.com/grunwaldlab/poppr/issues}. Otherwise, leave a message
#' on the groups.}
#' 
#' Below are descriptions and links to functions found in \pkg{poppr}. Be aware
#' that all functions in \pkg{\link[adegenet]{adegenet}} are also available.
#' 
#' @section Data import/export:
#' \itemize{
#' \item \code{\link{getfile}} - Provides a quick GUI to grab files for import
#' \item \code{\link{read.genalex}} - Read GenAlEx formatted csv files to a genind object
#' \item \code{\link{genind2genalex}} - Converts genind objects to GenAlEx formatted csv files
#' }
#' @section Data manipulation:
#' \itemize{
#' \item \code{\link{as.genclone}} - Converts genind objects to genclone objects
#' \item \code{\link{setpop}} - Set the population using defined hierarchies
#' \item \code{\link{splithierarchy}} - Split a concatenated hierarchy imported as a population
#' \item \code{\link{sethierarchy}} - Define a population hierarchy of a genclone object
#' \item \code{\link{gethierarchy}} - Extract the hierarchy data frame
#' \item \code{\link{addhierarchy}} - Add a vector or data frame to an existing hierarchy
#' \item \code{\link{namehierarchy}} - Rename a population hierarchy
#' \item \code{\link{missingno}} - Handles missing data
#' \item \code{\link{clonecorrect}} - Clone censors at a specified population hierarchy
#' \item \code{\link{informloci}} - Detects and removes phylogenetically uninformative loci
#' \item \code{\link{popsub}} - Subsets genind objects by population
#' \item \code{\link{shufflepop}} - Shuffles genotypes at each locus using four different shuffling algorithms
#' \item \code{\link{recode_polyploids}} - recode polyploid data sets with missing alleles imported as "0"
#' }
#' @section Genetic distances:
#' \itemize{
#' \item \code{\link{bruvo.dist}} - Bruvo’s distance
#' \item \code{\link{diss.dist}} - Absolute genetic distance (see provesti.dist)
#' \item \code{\link{nei.dist}} - Nei’s 1978 genetic distance
#' \item \code{\link{rogers.dist}} - Rogers’ euclidean distance
#' \item \code{\link{reynolds.dist}} - Reynolds’ coancestry distance
#' \item \code{\link{edwards.dist}} - Edwards’ angular distance
#' \item \code{\link{provesti.dist}} - Provesti’s absolute genetic distance
#' }
#' @section Bootstrapping:
#' \itemize{
#' \item \code{\link{aboot}} - Creates a bootstrapped dendrogram for any distance measure
#' \item \code{\link{bruvo.boot}} - Produces dendrograms with bootstrap support based on Bruvo’s distance
#' }
#' @section Analysis:
#' \itemize{
#' \item \code{\link{poppr.amova}} - Analysis of Molecular Variance (as implemented in ade4)
#' \item \code{\link{ia}} - Calculates the index of association
#' \item \code{\link{mlg}} - Calculates the number of multilocus genotypes
#' \item \code{\link{mlg.crosspop}} - Finds all multilocus genotypes that cross populations
#' \item \code{\link{mlg.table}} - Returns a table of populations by multilocus genotypes
#' \item \code{\link{mlg.vector}} - Returns a vector of a numeric multilocus genotype assignment for each individual
#' \item \code{\link{poppr}} - Returns a diversity table by population
#' \item \code{\link{poppr.all}} - Returns a diversity table by population for all compatible files specified
#' \item \code{\link{private_alleles}} - Tabulates the occurences of alleles that only occur in one population.
#' }
#' @section Visulalization:
#' \itemize{
#' \item \code{\link{plot_poppr_msn}} - Plots minimum spanning networks produced in poppr with scale bar and legend
#' \item \code{\link{greycurve}} - Helper to determine the appropriate parameters for adjusting the grey level for msn functions
#' \item \code{\link{bruvo.msn}} - Produces minimum spanning networks based off Bruvo’s distance colored by population
#' \item \code{\link{poppr.msn}} - Produces a minimum spanning network for any pairwise distance matrix related to the data
#' \item \code{\link{info_table}} - Creates a heatmap representing missing data or observed ploidy
#' \item \code{\link{genotype_curve}} - Creates a series of boxplots to demonstrate how many markers are needed to represent the diversity of your data. 
#' }
#'
#' @author Zhian N. Kamvar, Javier F. Tabima, Niklaus J. Grünwald
#' 
#' Maintainer: Zhian N. Kamvar
#' 
#' @references Kamvar ZN, Tabima JF, Grünwald NJ. (2014) Poppr: an R package for
#' genetic analysis of populations with clonal, partially clonal, and/or sexual
#' reproduction. PeerJ 2:e281 \url{http://dx.doi.org/10.7717/peerj.281}
#' @name poppr-package
#' @docType package
#==============================================================================#
NULL