library(readr)
library(tidyverse)
glossary <- read_csv("content/glossary2.csv")

for (i in c(1:nrow(glossary))){
  element= as.character(glossary[i,2])
  filename=
    str_c( "content/",
      sprintf("%03d", as.numeric(i)),
      "_",     
      str_replace_all(element, "[ /]", "_"),
      ".qmd"
    )
  title =str_c("## ", element)
  write_file(title,filename)
  print(i)
  }



tableg=glossary_table(as_kable = FALSE)
names (tableg) = c()


as.list(tableg)

textversion = nested_list(kl, type= "headers")
print (textversion)
