#' Interact with command line utility pdfunite to combine pdfs into a single file.
#'
#' @param input Character vector of separate pdf files to join.
#' @param output Character string representing output pdf file name.
#' @param check Logical, whether or not to invoke Sys.which to check for existance of pdfunite command line utility.
#' @param verbose Logical, whether or not to print command before running.
#'
#' @examples
#' pdf("page1.pdf")
#' plot(x = c(1:10), y = rnorm(10))
#' dev.off()
#' pdf("page2.pdf")
#' plot(x = c(1:10), y = c(1:10))
#' dev.off()
#' pdfunite(c("page1.pdf", "page2.pdf"), "full_document.pdf")
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