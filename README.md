# Project Template

A repository to hold NEFSC code for extracting data for the Cost of Climate Change project.  

# Overview and Folder structure

This is mostly borrowed from the world bank's EDB. https://dimewiki.worldbank.org/wiki/Stata_Coding_Practices
Please use forward slashes (that is C:/path/to/your/folder) instead of backslashes for unix/mac compatability. I'm forgetful about this. 

I keep each project in a separate folder.  The full path to ``stata_code/project_logistics/folder_setup_globals.do``is stored as the macro ``CostofClimateChange`` in stata's startup profile.do.  This lets me start working on any of my projects by opening stata and typing: 
```
do $CostofClimateChange
```
Rstudio users using projects don't have to do this step.  But it is convenient to read paths into variables by using the "R_paths_libraries.R" file.


# On passwords and other confidential information

Basically, you will want to store them in a place that does not get uploaded to github. 

For stata users, there is a description [here](/documentation/project_logistics.md). 

For R users, try storing it in [.Rprofile](/R_code/project_logistics/.Rprofile_sample). Store you API keys or Personal Access Tokens in [.Renviron](/R_code/project_logistics/.Renviron_sample)

# NOAA Requirements
This repository is a scientific product and is not official communication of the National Oceanic and Atmospheric Administration, or the United States Department of Commerce. All NOAA GitHub project code is provided on an ‘as is’ basis and the user assumes responsibility for its use. Any claims against the Department of Commerce or Department of Commerce bureaus stemming from the use of this GitHub project will be governed by all applicable Federal law. Any reference to specific commercial products, processes, or services by service mark, trademark, manufacturer, or otherwise, does not constitute or imply their endorsement, recommendation or favoring by the Department of Commerce. The Department of Commerce seal and logo, or the seal and logo of a DOC bureau, shall not be used in any manner to imply endorsement of any commercial product or activity by DOC or the United States Government.”


1. who worked on this project:  Min-Yang Lee
1. when this project was created: October, 2024 
1. what the project does: Extract data for the Cost of Climate Change project 
1. why the project is useful:  Extract data for the Cost of Climate Change project 
1. how users can get started with the project: Download and follow the readme
1. where users can get help with your project:  email me or open an issue
1. who maintains and contributes to the project. Min-Yang

# License file
See here for the [license file](License.txt)
