#' Get the paths from an object of class aRchi
#'
#' @docType methods
#' @rdname get_paths
#' @description Get the paths from an object of class aRchi
#' @param aRchi The object of class aRchi
#' @include aRchiClass.R
#' @seealso \code{\link{get_QSM}}; \code{\link{get_pointcloud}}; \code{\link{get_nodes}};
#' @examples
#' # Read an aRchi file with a QSM and paths tables.
#' file=system.file("extdata","Tree_1_aRchi.aRchi",package = "aRchi")
#' Tree1_aRchi=read_aRchi(file)
#'
#' # get the paths (a data.table)
#' get_paths(Tree1_aRchi)
#'
setGeneric("get_paths",
           function(aRchi){standardGeneric("get_paths")}
)

#' @rdname get_paths
#' @export

setMethod("get_paths",
          signature = "aRchi",
          function(aRchi){
            return(aRchi@Paths)
          }
)

