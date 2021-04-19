
library(knitr)
library(rmarkdown)
library(purrr)

filenames <- list.files("data/", full.names = TRUE)

walk(filenames, ~ render("all_years.Rmd", params = list(filename = .),
                         output_file = paste0(., ".html"), output_dir = "reports/"))