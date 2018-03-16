#' read_xaf
#' 
#' @import xml2
#' 
#' @param path: path to XAF Audit file 
#' 
#' @return a dataframe with the flattend xml file to the lowest level
#' 
#' @export
read_xaf <- function(path){
  file <- xml2::read_xml(path)
  
  # Check if this is a valid xml auditfile
  if(tolower(xml_name(x)) != "auditfile") {
    stop("Not an XML Auditfile");
  }
  
  # Check the XAF version
  # Namespaces defines the XAF version per xml standard
  namespace <- xml_ns(x)
  if(tolower(namespace[[1]]) == "http://www.auditfiles.nl/xaf/3.2") {
    message("Ok, XML Auditfile 3.2");
  } else if(tolower(namespace[[1]]) == "http://www.auditfiles.nl/xaf/3.1") {
    message("Ok, XML Auditfile 3.1");
  } else {
    stop(paste0("Unsupported auditfile version: ",namespace[[1]]));
  }

  # TODO: decide on supported versions
  # TODO: how to deal with differences between XAF versions?
  
  
  # TODO: Convert file to flat dataframe
  # TODO: Decide on output structure (combination of transactionlines, ledgeraccounts, periods, etc.)
  # TODO: Determine xafversion 
  # Need possible versions and required checks
  
  # TODO: Convert file to flat dataframe
  
  flat_xaf <- file
  
  return(flat_xaf)
}