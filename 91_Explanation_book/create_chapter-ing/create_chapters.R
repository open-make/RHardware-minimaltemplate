library ("yaml")
library(tidyverse)
#x= as.yaml(readLines("create_chapter-ing/_quarto.yml"))
x= read_yaml("create_chapter-ing/_quarto.yml")

chapters = 
  str_c("content/",list.files("content", pattern= "*.qmd"))
x$book$chapters = c("index.qmd", chapters,"references.qmd")

write_yaml(x,"_quarto.yml")
