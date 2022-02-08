`%>%` <- magrittr::`%>%`

usethis::ui_done("reproducing SERI figures .....")
here::here("Rmd", "seri-figures.Rmd") %>%
  rmarkdown::render(
    output_format = "html_document",
    output_file = "seri-figures.html",
    output_dir = here::here("docs"),
    quiet = FALSE
  )