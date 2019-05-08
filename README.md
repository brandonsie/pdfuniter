# pdfuniter
R package to call pdfunite command line utility


[pdfunite](http://manpages.ubuntu.com/manpages/bionic/man1/pdfunite.1.html)

## Setup
``` r
if(!requireNamespace("devtools")) install.packages("devtools")
devtools::install_github("brandonsie/pdfuniter")   
```

## Usage
``` r
pdfuniter::pdfunite(c("page1.pdf", "page2.pdf"), "combined_doc.pdf")
```
