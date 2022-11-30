#' str_wrap but for richtext
#'
#'This function serves the same purpose as `stringr::str_wrap` but
#' replaces the `\n` breaks with `<br>` breaks for use in a richtext format
#'
#'
#' @param string (character) the string to be wrapped
#' @param width (numeric) the width to be wrapped
#'
#' @return a string
#' @export
#'
#' @examples
#' rich_str_wrap(c("This is a sentence",
#'           "This is another sentence"),
#'           5)
rich_str_wrap <- function(string, width) {
  splits <- stringi::stri_wrap(string, width, simplify = FALSE)
  purrr::map_chr(splits, ~paste0(.x, collapse = "<br>"))
}
