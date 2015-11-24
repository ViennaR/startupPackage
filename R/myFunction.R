myFunction = function(values, groups){
  result = data.frame(value = values, group = groups) %>%
    group_by_('group') %>%
    summarize_(avg = ~mean(value, na.rm = TRUE))
  return(result)
}
