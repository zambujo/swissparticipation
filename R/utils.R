int <- function(x) as.integer(x)
chr <- function(x) as.character(x)
roman <- function(x) as.roman(x)

own_theme <- function() {
    ret <- (theme_minimal() +
        theme(
            plot.title.position = "plot",
            legend.position = "top",
            legend.title = element_blank(),
            legend.key.size = unit(0.8, "line"),
            text = element_text(
                size = 15,
                family = "Gill Sans",
                color = "gray15"
            )
        ))
    ret
}

get_participation <- function(x) {
  x %>%
    filter(!is.na(pillar)) %>%
    mutate(pillar = fct_rev(pillar)) %>%
    group_by(
      Pillar = pillar,
      Priority = thematic_priority_abbr,
      `Call Year` = call_year
    ) %>%
    summarise(
      `Participation Count` = n(),
      `Nb Projects` = n_distinct(project_id),
      `EU Contribution` = sum(eu_contribution, na.rm = TRUE)
    ) %>%
    ungroup() %>%
    mutate(`EU Contribution` = round(`EU Contribution`, 1)) %>%
    reactable(
      groupBy = c("Pillar", "Priority"),
      columns = list(
        Pillar = colDef(footer = "Total"),
        `Participation Count` = colDef(
          aggregate = "sum",
          format = colFormat(separators = TRUE),
          footer = function(values) {
            sum(values) %>% format(big.mark = ",")
          }
        ),
        `Nb Projects` = colDef(
          aggregate = "sum",
          format = colFormat(separators = TRUE),
          footer = function(values) {
            sum(values) %>% format(big.mark = ",")
          }
        ),
        `EU Contribution` = colDef(
          aggregate = "sum",
          format = colFormat(
            currency = "EUR",
            separators = TRUE,
            digits = 2
          ),
          footer = function(values) {
            sum(values) %>%
              format(big.mark = ",") %>%
              str_c("€", .)
          }
        )
      ),
      defaultColDef = colDef(footerStyle = list(fontWeight = "bold")),
      highlight = TRUE,
      compact = TRUE
    )
}

last_modified <- function(url) {
  url %>%
    httr::HEAD() %>%
    httr::headers() %>%
    pluck("last-modified")
}