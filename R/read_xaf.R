#' read_xaf
#' 
#' @import xml2
#' 
#' @param path: path to file 
#' 
#' @return a dataframe with the flattend xml file to the lowest level
#' 
#' @export
read_xaf <- function(path){
  file <- xml2::read_xml(path)
  
  # TODO: Determine xafversion 
  # Need possible versions and required checks
  
  # TODO: Convert file to flat dataframe
  
  flat_xaf <- file
  
  return(flat_xaf)
}