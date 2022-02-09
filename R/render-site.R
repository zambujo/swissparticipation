#!/usr/bin/env Rscript
working_dir <- here::here("Rmd")
rmarkdown::render_site(working_dir)
