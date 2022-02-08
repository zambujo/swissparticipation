`%>%` <- magrittr::`%>%`

usethis::ui_done("gathering data for analysis .....")
here::here("Rmd", "data-gathering.Rmd") %>%
  rmarkdown::render(
    output_format = "html_document",
    output_file = "data-gathering.html",
    output_dir = here::here("docs"),
    quiet = FALSE
  )