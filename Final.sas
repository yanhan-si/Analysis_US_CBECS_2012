/* ------------------------------------------------------------------------- *
 * cbecs project
 * Stats 506, Fall 2020
 *
 * Nov 30, 2020
 * Author: Yanhan Si yanhans@umich.edu
 *
 * ------------------------------------------------------------------------- *
 */
/* 79: --------------------------------------------------------------------- */
/* 79: --------------------------------------------------------------------- */

%let path=/folders/myfolders/Analysis_US_CBECS_2012/data;
libname cbecs "&path";

/*SAS looks for the format library in this location*/
libname library "&path";

/*creat a formated data set cbecs1*/
data cbecs.cbecs;
	set cbecs._2012_public_use_data_aug2016;
run;

proc surveyfreq data=cbecs.cbecs varmethod=jackknife;
	repweights finalwt1-finalwt197 / jkcoefs=1;
	weight finalwt;
	tables sqftc;
run;

proc surveymeans data=cbecs.cbecs varmethod=jackknife sum cv;
	repweights finalwt1-finalwt197 / jkcoefs=1;
	weight finalwt;
	var sqft;
	domain region;
run;
