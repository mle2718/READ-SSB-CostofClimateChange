# delimit ;
/* ITIS TSN keyfile */
clear;
odbc load,  exec("select * from cams_garfo.CFG_ITIS;") $myNEFSC_USERS_conn;
destring, replace;
save  $data_main/cams_species_keyfile_$today_date_string.dta, replace;
export delimited using  $data_main/cams_species_keyfile_$today_date_string.csv, replace;


/* Port keyfile 

A combined code for state, port and county. Taken with priority from CFDERS -> VTR PORT1 -> PRINC_PORT (permit data). Unknown = 990999. Named ports in VTR are converted to port numbers using the VTR.VLPORTTBL table. */

clear;
odbc load,  exec("select * from CAMS_GARFO.CFG_PORT;") $myNEFSC_USERS_conn;
destring, replace;

save  $data_main/cams_port_$today_date_string.dta, replace;
export delimited using  $data_main/cams_port_$today_date_string.csv, replace;

/* dealer keyfile */
clear;
odbc load,  exec("select * from NEFSC_GARFO.PERMIT_DEALER;") $myNEFSC_USERS_conn;
destring, replace;

save  $data_main/dealer_permit_$today_date_string.dta, replace;
export delimited using  $data_main/dealer_permit_$today_date_string.csv, replace;


/* DLR_MKT and DLR_GRADE , DLR_DISP */

/*this has market categories, but  I'm not sure if it's the proper support table */

clear;
odbc load,  exec("select * from CFDBS.SPECIES_ITIS_NE;") $myNEFSC_USERS_conn;
destring, replace;

save  $data_main/dealer_species_itis_ne$today_date_string.dta, replace;
export delimited using  $data_main/dealer_species_itis_ne$today_date_string.csv, replace;



/* GEAR */

clear;
odbc load,  exec("select * from cams_garfo.CFG_MASTER_GEAR;") $myNEFSC_USERS_conn;
destring, replace;

save  $data_main/cams_master_gear_keyfile_$today_date_string.dta, replace;
export delimited using  $data_main/cams_master_gear_keyfile_$today_date_string.csv, replace;


clear;
odbc load,  exec("select * from cams_garfo.cfg_NEGEAR;") $myNEFSC_USERS_conn;
destring, replace;

save  $data_main/cams_negear_keyfile_$today_date_string.dta, replace;
export delimited using  $data_main/cams_negear_keyfile_$today_date_string.csv, replace;

clear;
odbc load,  exec("select * from cams_garfo.cfg_vlgear;") $myNEFSC_USERS_conn;
destring, replace;

save  $data_main/cams_vlgear_keyfile_$today_date_string.dta, replace;
export delimited using  $data_main/cams_vlgear_keyfile_$today_date_string.csv, replace;
