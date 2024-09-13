#delimit ;

global firstyr 2000;
global lastyr = 2004;
clear;

/* landings */
/* leave off schema for TTS */
odbc load,  exec("select * from cams_land cl
	where year>=$firstyr and year<=$lastyr;") $myNEFSC_USERS_conn;

save $data_main/cams_land_$today_date_string.dta, replace;
export delimited using  $data_main/cams_land_$today_date_string.csv, replace;


clear;
/*subtrip */
odbc load,  exec("select * from cams_subtrip cst
	where year>=$firstyr and year<=$lastyr;") $myNEFSC_USERS_conn;

save $data_main/cams_subtrip_$today_date_string.dta, replace;

export delimited using  $data_main/cams_subtrip_$today_date_string.csv, replace;





/* orphan subtrip */
clear;
odbc load,  exec("select * from CAMS_VTR_ORPHANS_SUBTRIP where year>=$firstyr and year<=$lastyr;") $myNEFSC_USERS_conn;

save $data_main/cams_orphan_subtrip_$today_date_string.dta, replace;
export delimited using  $data_main/cams_orphan_subtrip_$today_date_string.csv, replace;
