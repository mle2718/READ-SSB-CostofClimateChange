# Project Template

A repository to hold NEFSC code for extracting data for the Cost of Climate Change project.  

# Running code

1. Open up stata and the stata do file called ``/stata_code/project_logistics/folder_setup_globals.do``
2. Make a copy of these lines, replace "minyangWin" with your username and change the ``my_projdir`` global to point to your project directory 

```
/*minyangWin  */
if strmatch("$user","minyangWin"){;
global my_projdir "C:/Users/Min-Yang.Lee/Documents/READ-SSB-CostofClimateChange";
};
```
to your project directory. 

Here are two ways to be ready to run the project.

### Automatic
1.  Modify or create your profile.do file that stata automatically runs on startup.  I've put mine in c:/ado/profile.do.  
add the following 2 lines

```
global user your_user_name
global CostofClimateChange full\path\to\folder_setup_globals.do 
```
2. Restart stata
3. type  "do $CostofClimateChange"

Everything is set up and ready to go.

# On passwords and other confidential information

Basically, you will want to store them in a place that does not get uploaded to github. 

For stata users, ``profile.do`` is a good place to store them.

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
