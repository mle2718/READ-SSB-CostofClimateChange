#Install packages if necessary
if(!require(here)) {  
  install.packages("here")
  require(here)}

# Setup directories
here::i_am("R_code/project_logistics/R_paths_libraries.R")
my_projdir<-here()

Rcodedir<-file.path(my_projdir,"R_code")
# This could also be written like this, but I'm too lazy to switch it all over.
# Rcodedir<-here("R_code")

#Folders to store Rcode that extracts and processes data
Rdep_code<-file.path(Rcodedir,"data_extraction_processing")
Rextraction_code<-file.path(Rcodedir,"data_extraction_processing","extraction")
Rprocessing_code<-file.path(Rcodedir,"data_extraction_processing","processing")
# Folders that store code that does analysis

Ranalysis_code <-file.path(Rcodedir, "analysis")


#Folders to store stata_code that extracts and processes data
stata_codedir<-file.path(my_projdir,"stata_code")
stata_extraction_code<-file.path(stata_codedir,"data_extraction_processing","extraction")
stata_processing_code<-file.path(stata_codedir,"data_extraction_processing","processing")


# Folders that store code that does analysis
stata_analysis_code <-file.path(stata_codedir, "analysis")





# setup data folder
my_datadir <-file.path(my_projdir, "data_folder")
data_internal <-file.path(my_datadir, "internal")
data_external<-file.path(my_datadir, "external")
data_main <-file.path(my_datadir, "main")
data_intermediate <-file.path(my_datadir, "intermediate")

# setup results folders 
my_results <-file.path(my_projdir, "results")

# setup images folders 

my_images <-file.path(my_projdir, "images")
my_tables <-file.path(my_projdir, "tables")



# Find the stata executable if you want to run stata from within R

# https://github.com/Hemken/Statamarkdown/blob/master/R/find_stata.r
# Search through places that stata is usually installed.
# Searches largest to smallest, from 18 down.  smallest to highest, which means if you have StataIC and stataMP-64, it will stop at StataIC
# and not pick up StataMP-64 



stataexe <- ""

for (d in c("C:/Program Files","C:/Program Files (x86)")) {
  if (stataexe=="" & dir.exists(d)) {
    for (v in seq(18,11,-1)) {
      dv <- paste(d,paste0("Stata",v), sep="/")
      if (dir.exists(dv)) {
        for (f in c("StataMP-64", "StataSE-64", "StataIC-64", "Stata-64",
                    "StataMP", "StataSE", "StataIC", "Stata")) {
          dvf <- paste(paste(dv, f, sep="/"), "exe", sep=".")
          if (file.exists(dvf)) {
            stataexe <- dvf
          }
          if (stataexe != "") break
        }
      }
      if (stataexe != "") break
    }
  }
  if (stataexe != "") break
}
