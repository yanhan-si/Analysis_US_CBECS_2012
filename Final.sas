/* ------------------------------------------------------------------------- *
 * cbecs project
 * Stats 506, Fall 2020
 *
 * Nov 30, 2020
 * Author: Yanhan Si yanhans@umich.edu
 * Refer to User’s Guide to the 2012 CBECS Public Use Microdata File
 * ------------------------------------------------------------------------- *
 */
/* 79: --------------------------------------------------------------------- */
/* 79: --------------------------------------------------------------------- */

%let path=/folders/myfolders/Analysis_US_CBECS_2012/data;
libname cbecs "&path";

/*SAS looks for the format library in this location*/
libname library "&path";

/*create a formated data set cbecs*/
/*create a new variable : the building level energy intensity*/
data cbecs.cbecs;
	set cbecs._2012_public_use_data_aug2016;
 	if mfbtu=. then mfbtu=0;
 	BLEUI=mfbtu/sqft;
run;


/*Calculate*/
ods csvall file="&path/BLEUI.csv";
proc surveymeans data=cbecs.cbecs varmethod=jackknife sum;
	repweights finalwt1-finalwt197 / jkcoefs=1;
	weight finalwt;
	var BLEUI;
	domain pba * region;
run;
ods csvall close;

/*Calculate*/
ods csvall file="&path/BLEUI_pba.csv";
proc surveymeans data=cbecs.cbecs varmethod=jackknife sum;
	repweights finalwt1-finalwt197 / jkcoefs=1;
	weight finalwt;
	var BLEUI;
	domain pba;
run;
ods csvall close;



