`%>%` <- magrittr::`%>%`

usethis::ui_done("reproducing SERI figures .....")
here::here("Rmd", "seri.Rmd") %>%
  rmarkdown::render(
    output_format = "html_document",
    output_file = "seri.html",
    output_dir = here::here("docs"),
    quiet = FALSE
  )