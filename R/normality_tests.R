#' Anderson-Darling Test
#' Uses library(nortest)
#' @param x a numeric vector
#' @return a list with components
#' \item{statistic}{the value of the test statistic}
#' \item{p.value}{the p-value of the test}
#' @export
ad.test.normality <- function(x) { # nolint: object_name_linter.
  ad <- ad.test(x) # nortest::
  res <- list(
    statistic = ad$statistic,
    p.value = ad$p.value
  )
  return(res)
}

#' Vasicek-Song Test
#' Uses library(vsgoftest)
#' @param x a numeric vector
#' @return a list with components
#' \item{statistic}{the value of the test statistic}
#' \item{p.value}{the p-value of the test}
#' @export
vs.test.normality <- function(x) { # nolint: object_name_linter.
  vs <- vs.test(x, densfun = "dnorm") # vsgoftest::
  res <- list(
    statistic = vs$statistic,
    p.value = vs$p.value
  )
  return(res)
}