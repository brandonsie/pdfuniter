#' Interact with command line utility pdfunite to combine pdfs into a single file.
#'
#' @param input Character vector of separate pdf files to join.
#' @param output Character string representing output pdf file name.
#' @param check Logical, whether or not to invoke Sys.which to check for existance of pdfunite command line utility.
#' @param verbose Logical, whether or not to print command before running.
#'
#' @examples
#' pdfunite(c("page1.pdf", "page2.pdf", "page3.pdf"), "full_document.pdf")
#' pdfunite(c("a.pdf", "b.pdf"), "ab.pdf", check = FALSE, verbose = FALSE)
#'
#' @export

pdfunite <- function(input, output, check = TRUE, verbose = TRUE){

  if(check){ if(nchar(Sys.which("pdfunite")) == 0){
    stop("Error: pdfunite command line utility not found.")
  }}

  command = paste(
    "pdfunite",
    paste(input, collapse = " "),
    output
  )

  if(verbose){print(command)}

  system(command)

}