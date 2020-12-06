/*Calculate the weighted median hours per week*/
proc means median data=cbecs.cbecs;
	var wkhrs;
	weight finalwt;
run;

/*Calculate the weighted average size (mean square feet per building) of
office buildings and the associated RSE*/
proc surveymeans data=cbecs.cbecs varmethod=jackknife mean stderr cv;
	repweights finalwt1-finalwt197 / jkcoefs=1;
	weight finalwt;
	var sqft;
	domain pba;
run;

/*Calculate the total square footage of commercial buildings in the Northeast
Census region and the associated RSE */
proc surveymeans data=cbecs.cbecs varmethod=jackknife sum cv;
	repweights finalwt1-finalwt197 / jkcoefs=1;
	weight finalwt;
	var sqft;
	domain region;
run;