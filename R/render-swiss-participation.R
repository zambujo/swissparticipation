`%>%` <- magrittr::`%>%`

usethis::ui_done("rendering the storyboard .....")
here::here("Rmd", "swiss-participation.Rmd") %>%
  rmarkdown::render(
    output_format = "html_document",
    output_file = "index.html",
    output_dir = here::here("docs"),
    quiet = FALSE
  )