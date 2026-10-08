# ggplot2 theme matched to mikaelsyed.com.
# Transparent background and mid-tone text, so charts read well on the report's
# light and dark themes and on the website.

library(ggplot2)

ms_colours <- c(
  red    = "#d62221",
  orange = "#de8d32",
  green  = "#98971a",
  aqua   = "#689d6a",
  blue   = "#458592",
  purple = "#b16286",
  yellow = "#d79921",
  grey   = "#928374"
)

# Muted text that stays legible on both #f9f5d7 and #242424
ms_text <- "#8c8577"
ms_grid <- "#8c857733"

theme_mikael <- function(base_size = 12) {
  theme_minimal(base_size = base_size, base_family = "sans") %+replace%
    theme(
      plot.background   = element_rect(fill = "transparent", colour = NA),
      panel.background  = element_rect(fill = "transparent", colour = NA),
      legend.background = element_rect(fill = "transparent", colour = NA),
      legend.key        = element_rect(fill = "transparent", colour = NA),
      text              = element_text(colour = ms_text),
      axis.text         = element_text(colour = ms_text, size = rel(0.85)),
      axis.title        = element_text(colour = ms_text, size = rel(0.9)),
      plot.title        = element_text(colour = ms_colours[["orange"]], face = "bold",
                                       size = rel(1.25), hjust = 0, margin = margin(b = 4)),
      plot.subtitle     = element_text(colour = ms_text, hjust = 0, margin = margin(b = 10)),
      plot.caption      = element_text(colour = ms_text, size = rel(0.75), hjust = 1),
      plot.title.position = "plot",
      panel.grid.major  = element_line(colour = ms_grid, linewidth = 0.3),
      panel.grid.minor  = element_blank(),
      strip.text        = element_text(colour = ms_colours[["green"]], face = "bold"),
      plot.margin       = margin(12, 16, 12, 12)
    )
}

# Discrete palette in the site's order
scale_colour_mikael <- function(...) scale_colour_manual(values = unname(ms_colours), ...)
scale_fill_mikael   <- function(...) scale_fill_manual(values = unname(ms_colours), ...)

# Default knitr device settings for transparent PNGs
ms_knitr_setup <- function() {
  knitr::opts_chunk$set(
    # ragg renders semi-transparent fills correctly on a transparent background
    dev = "ragg_png", dev.args = list(background = "transparent"), dpi = 144,
    fig.width = 9, fig.height = 5, fig.align = "center",
    warning = FALSE, message = FALSE
  )
}
