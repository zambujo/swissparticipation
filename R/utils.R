int <- function(x) as.integer(x)
chr <- function(x) as.character(x)
roman <- function(x) as.roman(x)


own_theme <- function() {
    ret <- (theme_minimal() +
        theme(
            plot.title.position = "plot",
            legend.position = "top",
            legend.title = element_blank(),
            text = element_text(
                size = 15,
                family = "Gill Sans",
                color = "gray15"
            )
        ))
    ret
}