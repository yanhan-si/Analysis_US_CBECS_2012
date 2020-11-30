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

/*creat a formated data set cbecs1*/
data cbecs.cbecs;
	set cbecs._2012_public_use_data_aug2016;
run;

/*Calculate the number of commercial buildings that are 5,000 square feet or
smaller and the associated RSE*/
proc surveyfreq data=cbecs.cbecs varmethod=jackknife;
	repweights finalwt1-finalwt197 / jkcoefs=1;
	weight finalwt;
	tables sqftc;
run;

/*Calculate the total square footage of commercial buildings in the Northeast
Census region and the associated RSE */
proc surveymeans data=cbecs.cbecs varmethod=jackknife sum cv;
	repweights finalwt1-finalwt197 / jkcoefs=1;
	weight finalwt;
	var sqft;
	domain region;
run;

/*Calculate the weighted average size (mean square feet per building) of
office buildings and the associated RSE*/
proc surveymeans data=cbecs.cbecs varmethod=jackknife mean stderr cv;
	repweights finalwt1-finalwt197 / jkcoefs=1;
	weight finalwt;
	var sqft;
	domain pba;
run;

/*Calculate the weighted median hours per week*/
proc means median data=cbecs.cbecs;
	var wkhrs;
	weight finalwt;
run;

/*Calculate the total electricity consumption for office buildings in the Midwest and the associated RSE*/
proc surveymeans data=cbecs.cbecs varmethod=jackknife sum;
	repweights finalwt1-finalwt197 / jkcoefs=1;
	weight finalwt;
	var elcns;
	domain pba * region;
run;



