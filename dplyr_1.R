# due to mac specific bug..
install.packages("xml2", configure.vars='INCLUDE_DIR=/usr/local/opt/libxml2/include/libxml2 LIB_DIR=/usr/local/opt/libxml2/lib/', repo = "http://cran.rstudio.com/")



install.packages('remotes')
remotes::install_github("tidyverse/dplyr")

install.packages("usethis")

renv::snapshot()

library(dplyr)
sessionInfo()

data(mtcars)

mtcars %>%
  select(mpg)

# Create a github repo out of this project
usethis::use_github()
