#' Plot a sample plot
#' @return plot data in Json format
#' @export
sample_plot <- function() {
  p <- ggplot2::ggplot(ggplot2::mpg,
                       ggplot2::aes(
                                    ggplot2::displ,
                                    ggplot2::hwy,
                                    colour = ggplot2::class)) +
    ggplot2::geom_point()
  plotly::plotly_json(p, pretty = FALSE)
}