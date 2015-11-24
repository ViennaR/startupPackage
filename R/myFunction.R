#' Computes means by groups
#' @description
#' You can put extended description here
#' @details
#' If your function is complicated, you may consider adding a details section
#' @param values numeric vector of values
#' @param groups vector of groups
#' @return data.frame with groups names in first column and average values per group in the second one
#' @export
#' @import dplyr
myFunction = function(values, groups){
  result = data.frame(value = values, group = groups) %>%
    group_by(group) %>%
    summarize(avg = mean(value, na.rm = TRUE))
  return(result)
}
