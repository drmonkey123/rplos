#' Connect with PLoS API data
#'
#' \code{rplos} provides an R interface to the PLoS Search API. More information about each 
#' function can be found in its help documentation. If you are looking for PLOS 
#' article-Level metrics data, see the \code{alm} package.
#'
#' @section rplos functions:
#'
#' Most rplos functions make web calls using the \code{httr} package, and parse json using 
#' the \code{jsonlite} package.
#'
#' @section PLoS API key:
#'
#' You used to need an API key to use this package - no longer needed
#' 
#' @section Tutorials:
#'
#' See the rOpenSci website for a tutorial:
#' http://ropensci.org/tutorials/rplos_tutorial.html
#' 
#' @examples \dontrun{
#' searchplos(q='ecology', fl=c('id','publication_date'), limit = 2)
#'
#' # Get only full article DOIs
#' out <- searchplos(q="*:*", fl='id', fq='doc_type:full', start=0, limit=250)
#' head(out$data)
#'
#' # Get DOIs for only PLoS One articles
#' out <- searchplos(q="*:*", fl='id', fq='cross_published_journal_key:PLoSONE', start=0, limit=15)
#' head(out$data)
#' }
#' 
#' @docType package
#' @name rplos
#' @aliases rplos rplos-package
NULL

#' Defunct functions in rplos
#'
#' \itemize{
#'  \item \code{\link{crossref}}: service no longer provided - see the package \code{rcrossref}
#' }
#'
#' @name rplos-defunct
NULL