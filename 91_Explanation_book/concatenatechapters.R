#setwd("~/github_repo/03_openmake/RHardware-minimaltemplate/91_Explanation_book")

## this delete the files with _conc to get things clean:
a=list.files("content",pattern= "_conc.qmd$")

file.remove (paste0("content/",a))

## variables: original yml file without concatenation.
bookyml =yaml::read_yaml("_quarto-ori.yml")

### write function concatenating text to a  text files 
### 

# this function reads a file and get rid of the medadata
textwithout_metadata = function(file) {
  x = readr::read_lines(file)
  rng = grep("---", x)
  startline = ifelse (is.na (rng[2]),1,rng[2]+1 )
  x = x[startline: length(x)]
}

# the following function is a tweak of xfun::read_all 
textconcatenate = function (files, before = function(f, x) NULL, after = function(f, 
                                                                                  x) NULL) 
{
  call_fun = function(fun, x, ...) {
    if (is.function(fun)) {
      if (length(formals(fun)) > 1) 
        fun(x, ...)
      else fun(x)
    }
    else fun
  }
  x = unlist(lapply(files, function(f) {
    t = textwithout_metadata(f)
    c(call_fun(before, f, t), t, call_fun(after, f, t))
  }))
  xfun::raw_string(x)
}


######## this part is a loop to change concatenate chapters belonging to the same part

for (i in c(1:length(bookyml$book$chapters))){
  print (i)
  chapter=bookyml$book$chapters[[i]]
  #print (chapter)
  
  if (length(chapter)>1){ ### if part have only one chapter, we do not do anything
    newchapter = textconcatenate (chapter$chapters, before = "", after = "")
    namefile = paste0 (gsub(".qmd", "_",chapter$chapters[1]),"conc.qmd")
    fileConn=file(namefile)
    xfun::write_utf8 (newchapter, fileConn)
    close(fileConn)
    
    bookyml$book$chapters[[i]]$chapters <- namefile
   
     #print(namefile)
  }
}


yaml::write_yaml(bookyml,"_quarto2.yml", handlers=list(logical=yaml::verbatim_logical))

