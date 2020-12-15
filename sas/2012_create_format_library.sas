
* LIBNAME GOES HERE;
%let path=/folders/myfolders/Analysis_US_CBECS_2012/data;
libname cbecs "&path";
PROC FORMAT LIBRARY = cbecs.formats;

VALUE $ALLFEW
   '1'='All'
   '2'='Most'
   '3'='Some'
   '4'='A few'
;

VALUE $ANYEGY
  '1'='Yes, some energy was used in 2012'
  '2'='No, no energy was used'
;

VALUE $CENDIV
  '1'='New England'
  '2'='Middle Atlantic'
  '3'='East North Central'
  '4'='West North Central'
  '5'='South Atlantic'
  '6'='East South Central'
  '7'='West South Central'
  '8'='Mountain'
  '9'='Pacific'
;

VALUE $CLEQP
   '1'='Residential-type central air conditioners (other than heat pumps) that cool air directly and circulate it without using chilled water'
   '2'='Packaged air conditioning units (other than heat pumps)'
   '3'='Central chillers inside (or adjacent to) the building that chill water for air conditioning'
   '4'='District chilled water piped in from outside the building'
   '5'='Heat pumps for cooling'
   '6'='Individual room air conditioners (other than heat pumps)'
   '7'='"Swamp" coolers or evaporative coolers'
   '8'='Other cooling equipment'
;

VALUE $CUBEC
   '1'='1 to 20 percent'
   '2'='21 to 50 percent'
   '3'='More than 50 percent'
;

VALUE $CUBELC
   '1'='Near perimeter of building'
   '2'='In core of building'
   '3'='Entire building is open plan'
;

VALUE $DAYSOPN
   '1'='All five days'
   '2'='Some of these days'
   '3'='Not open at all Monday through Friday'
;

VALUE $DCNTRSF 
   '1' = '500 square feet or less'
   '2' = '501 to 1,500 square feet'
   '3' = '1,501 to 3,000 square feet'
   '4' = '3,001 to 10,000 square feet'
   '5' = 'Over 10,000 square feet'
;

VALUE $DRYCLN
   '1'='In this building'
   '2'='Off-site'
;

VALUE $ECNTYP
   '1'='Air-side economizer'
   '2'='Water-side economizer'
;

VALUE $FACACT
   '01'='College, university, or junior college'
   '02'='Primary or secondary school [grades K-12]'
   '03'='Other type of school'
   '04'='Office complex'
   '05'='Retail complex'
   '06'='Storage complex'
   '07'='Religious campus or complex'
   '08'='Hospital or other health care complex'
   '09'='Lodging or resort complex'
   '10'='Post office complex'
   '11'='Prison or correctional facility'
   '12'='Other type of government complex'
   '13'='Industrial complex'
   '14'='Transportation complex such as a terminal, depot, or airport'
   '15'='Other type of campus or complex'
;

VALUE $FKTYP
   '1'='Fuel oil'
   '2'='Diesel'
   '3'='Kerosene'
   '4'='Fuel oil and diesel'
   '5'='Fuel oil and kerosene'
   '6'='Diesel and kerosene'
   '7'='Fuel oil, diesel, and kerosene'
   '9'='Don''t know'
;

VALUE $FLATC
   '1'='All'
   '2'='Most'
   '3'='Some'
   '4'='A few'
   '5'='None'
;

VALUE $GENUSE
   '1'='Primarily for emergency back-up or testing'
   '2'='During periods of high electricity demand'
   '3'='Whenever electricity was used'
;

VALUE $GLSAREA
   '1'='More glass area'
   '2'='Less glass area'
   '3'='About the same amount'
;

VALUE $GLSPCT
   '1'='1 percent or less'
   '2'='2 to 10 percent'
   '3'='11 to 25 percent'
   '4'='26 to 50 percent'
   '5'='51 to 75 percent'
   '6'='76 to 100 percent'
;

VALUE $GOVTYP
   '1'='Federal'
   '2'='State'
   '3'='Local'
   '7'='Withheld to protect confidentiality'
;

VALUE $HOWRDC
   '1'='Part of the Building Automation System'
   '2'='Programmable thermostat'
   '3'='Manually change thermostat'
   '4'='Manually shut down equipment'
;

VALUE $HPBKUP
   '1'='Electric resistance backup'
   '2'='Natural/bottled gas backup (dual fuel)'
   '3'='No backup source'
;

VALUE $HRSCAT
  '1'='No hours'
  '2'='1 to 39'
  '3'='40 to 48'
  '4'='49 to 60'
  '5'='61 to 84'
  '6'='85 to 167'
  '7'='168'
;

VALUE $HTEQP
   '1'='Furnaces that heat air directly, without using steam or hot water'
   '2'='Packaged central unit (roof mounted)'
   '3'='Boilers inside (or adjacent to) the building that produce steam or hot water'
   '4'='District steam or hot water piped in from outside the building'
   '5'='Heat pumps (other than components of a packaged unit)'
   '6'='Individual space heaters (other than heat pumps)'
   '7'='Other heating equipment'
;

VALUE $LAPTPC
  '00'='Zero'
  '01'='1 to 4'
  '02'='5 to 9'
  '03'='10 to 19'
  '04'='20 to 49'
  '05'='50 to 99'
  '06'='100 to 249'
  '07'='250 to 499'
  '08'='500 to 999'
  '09'='1,000 or more'
;

VALUE $LAUND
   '1'='In this building'
   '2'='In another building on-site'
   '3'='By an off-site laundry service'
;

VALUE $LIT1CAT
   '1'='1 to 25 percent'
   '2'='26 to 50 percent'
   '3'='51 to 75 percent'
   '4'='76 to 100 percent'
   '5'='Not lit at all when it is normally open'
;

VALUE $LIT2CAT
   '1'='1 to 25 percent'
   '2'='26 to 50 percent'
   '3'='51 to 75 percent'
   '4'='76 to 100 percent'
   '5'='Not lit at all during off hours'
;

VALUE $LTEXPC
   '1'='Less than 10 percent'
   '2'='10 to 25 percent'
   '3'='25 to 50 percent'
   '4'='More than 50 percent'
;

VALUE $MGRTYP
   '1'='Property management company or leasing agent'
   '2'='Business owner or tenant'
   '3'='Facilities personnel employed directly by the building owner'
   '4'='Facilities or energy management consultant'
   '5'='Volunteer member of the organization'
   '6'='Manager with general supervisory duties'
   '7'='Other'
;

VALUE $MONTH
   '01'='January'
   '02'='February'
   '03'='March'
   '04'='April'
   '05'='May'
   '06'='June'
   '07'='July'
   '08'='August'
   '09'='September'
   '10'='October'
   '11'='November'
   '12'='December'
   '97'='Undetermined'
;

VALUE $NGSRC
   '1'='Bought from the local utility'
   '2'='Bought from someone else, such as a non-utility or a broker'
   '3'='Bought both ways'
;

VALUE $NOCCAT
  '01'='Zero'
  '02'='One'
  '03'='2 to 5'
  '04'='6 to 10'
  '05'='11 to 20'
  '06'='21 to 50'
  '07'='51 to 100'
  '08'='More than 100'
;

VALUE $OPERTR
   '1'='Building owner'
   '2'='Party responsible for building operations'
   '3'='Both (either they have equal input, or are the same person)'
   '4'='Other'
;

VALUE $OWNOCC
   '1'='Owner occupied'
   '2'='Leased to tenant(s)'
   '3'='Combination occupied and leased'
;

VALUE $OWNTYPE
   '01'='Real estate investment trust (REIT)'
   '02'='Other public or private corporation, partnership, LLC, or LLP'
   '03'='Individual owner(s)'
   '04'='Religious organization'
   '05'='Non-profit organization (other than religious or government)'
   '06'='Private academic institution'
   '07'='Other non-government'
   '08'='Federal government'
   '09'='State government'
   '10'='Local government'
   '97'='Withheld to protect confidentiality'
;

VALUE $PBA
  '01'='Vacant'
  '02'='Office'
  '03'='Data center'
  '04'='Laboratory'
  '05'='Nonrefrigerated warehouse'
  '06'='Food sales'
  '07'='Public order and safety'
  '08'='Outpatient health care'
  '09'='Industrial'
  '10'='Agricultural'
  '11'='Refrigerated warehouse'
  '12'='Religious worship'
  '13'='Public assembly'
  '14'='Education'
  '15'='Food service'
  '16'='Inpatient health care'
  '17'='Nursing'
  '18'='Lodging'
  '19'='Residential'
  '20'='Parking garage'
  '23'='Strip shopping mall'
  '24'='Enclosed mall'
  '25'='Retail other than mall'
  '26'='Service'
  '91'='Other'
;

VALUE $PBAPLUS
   '01'='Vacant'
   '02'='Administrative/professional office'
   '03'='Bank/other financial'
   '04'='Government office'
   '05'='Medical office (non-diagnostic)'
   '06'='Mixed-use office'
   '07'='Other office'
   '08'='Laboratory'
   '09'='Distribution/shipping center'
   '10'='Non-refrigerated warehouse'
   '11'='Self-storage'
   '12'='Convenience store'
   '13'='Convenience store with gas station'
   '14'='Grocery store/food market'
   '15'='Other food sales'
   '16'='Fire station/police station'
   '17'='Other public order and safety'
   '18'='Medical office (diagnostic)'
   '19'='Clinic/other outpatient health'
   '20'='Refrigerated warehouse'
   '21'='Religious worship'
   '22'='Entertainment/culture'
   '23'='Library'
   '24'='Recreation'
   '25'='Social/meeting'
   '26'='Other public assembly'
   '27'='College/university'
   '28'='Elementary/middle school'
   '29'='High school'
   '30'='Preschool/daycare'
   '31'='Other classroom education'
   '32'='Fast food'
   '33'='Restaurant/cafeteria'
   '34'='Other food service'
   '35'='Hospital/inpatient health'
   '36'='Nursing home/assisted living'
   '37'='Dormitory/fraternity/sorority'
   '38'='Hotel'
   '39'='Motel or inn'
   '40'='Other lodging'
   '41'='Vehicle dealership/showroom'
   '42'='Retail store'
   '43'='Other retail'
   '44'='Post office/postal center'
   '45'='Repair shop'
   '46'='Vehicle service/repair shop'
   '47'='Vehicle storage/maintenance'
   '48'='Other service'
   '49'='Other'
   '50'='Strip shopping mall'
   '51'='Enclosed mall'
   '52'='Courthouse/probation office'
   '53'='Bar/pub/lounge'
;

VALUE $PBAX
   '11'='Office/Professional'
   '12'='Data center/Computer "server farm"'
   '13'='Warehouse/Storage'
   '14'='Food sales or service'
   '15'='Enclosed mall'
   '16'='Retail (other than mall)'
   '17'='Education'
   '18'='Religious worship'
   '19'='Public assembly'
   '20'='Health care'
   '21'='Service'
   '22'='Lodging'
   '23'='Public order and safety'
   '24'='Residential'
   '25'='Industrial'
   '26'='Agricultural'
   '27'='Vacant'
   '28'='Other'
;

VALUE $PCTRMC
  '00'='Zero'
  '01'='1 to 4'
  '02'='5 to 9'
  '03'='10 to 19'
  '04'='20 to 49'
  '05'='50 to 99'
  '06'='100 to 249'
  '07'='250 to 499'
  '08'='500 to 999'
  '09'='1,000 to 2,499'
  '10'='2,500 or more'
;

VALUE $PITCH
   '1'='Flat'
   '2'='Shallow pitch'
   '3'='Steeper pitch'
;

VALUE $PKGTYP
   '1'='Factory-assembled unitary packaged unit'
   '2'='Custom built-up packaged unit'
   '3'='Both factory-assembled and custom built-up packaged units'
;

VALUE $POOLSRC
   '1'='Electricity'
   '2'='Natural gas'
   '3'='Fuel oil/Diesel/Kerosene'
   '4'='Bottled gas/LPG/Propane'
   '5'='Solar'
   '6'='Some other energy source'
;

VALUE $PRAMT
   '1'='Less than 100'
   '2'='100 to 499'
   '3'='500 to 999'
   '4'='1,000 or more'
;

VALUE $PRNTR
   '1'='Inkjet'
   '2'='Laser'
   '3'='Some other type'
   '4'='Half inkjet, half laser'
;

VALUE $PRUNIT
   '1'='Gallons'
   '2'='Pounds'
;

VALUE $PUBCLIM
  '1'='Very cold/Cold'
  '2'='Mixed-humid'
  '3'='Hot-dry/Mixed-dry/Hot-humid'
  '5'='Marine'
  '7'='Withheld to protect confidentiality'
;

VALUE $REGION
  '1'='Northeast'
  '2'='Midwest'
  '3'='South'
  '4'='West'
;

VALUE $RFCNS
   '1'='Built-up (tar, felts, or fiberglass and a ballast, such as stone)'
   '2'='Slate or tile shingles'
   '3'='Wood shingles, shakes, or other wooden materials'
   '4'='Asphalt, fiberglass, or other shingles'
   '5'='Metal surfacing'
   '6'='Plastic, rubber, or synthetic sheeting (single or multiple ply)'
   '7'='Concrete'
   '8'='No one major type'
   '9'='Other'
;

VALUE $SERVERC
  '00'='Zero'
  '01'='1 to 4'
  '02'='5 to 9'
  '03'='10 to 19'
  '04'='20 to 49'
  '05'='50 to 99'
  '06'='100 to 249'
  '07'='250 to 499'
  '08'='500 or more'
;

VALUE $SHAPE
   '01'='Square'
   '02'='Wide rectangle'
   '03'='Narrow rectangle'
   '04'='Rectangle or square with an interior courtyard'
   '05'='"H" shaped'
   '06'='"U" shaped'
   '07'='"E" shaped'
   '08'='"T" shaped'
   '09'='"L" shaped'
   '10'='"+" or cross shaped'
   '11'='Other shape'
;

VALUE $SQFTC
  '01'='1,000 square feet or less'
  '02'='1,001 to 5,000 square feet'
  '03'='5,001 to 10,000 square feet'
  '04'='10,001 to 25,000 square feet'
  '05'='25,001 to 50,000 square feet'
  '06'='50,001 to 100,000 square feet'
  '07'='100,001 to 200,000 square feet'
  '08'='200,001 to 500,000 square feet'
  '09'='500,001 to 1 million square feet'
  '10'='Over 1 million square feet'
;

VALUE $WATREQP
   '1'='One or more centralized water heaters'
   '2'='One or more "point-of-use" water heaters'
   '3'='Both types'
;

VALUE $WINTYP
   '1'='Single layer glass'
   '2'='Multi-layer glass'
   '3'='Combination of both'
   '4'='No windows'
;


VALUE $WLCNS
   '1'='Brick, stone, or stucco'
   '2'='Pre-cast concrete panels'
   '3'='Concrete block or poured concrete (above grade)'
   '4'='Aluminum, asbestos, plastic, or wood materials (siding, shingles, tiles, or shakes)'
   '5'='Sheet metal panels'
   '6'='Window or vision glass (glass that can be seen through)'
   '7'='Decorative or construction glass'
   '8'='No one major type'
   '9'='Other'
;

VALUE $WOAMT
   '1'='Less than 1 cord'
   '2'='1 to 9 cords'
   '3'='10 to 20 cords'
   '4'='More than 20 cords'
;

VALUE $WODOLS
   '1'='$1 to $100'
   '2'='$101 to $500'
   '3'='$501 to $1,000'
   '4'='$1,001 to $2,000'
   '5'='Over $2,000'
;

VALUE $WORKCAT
  '01'='None'
  '02'='1 to 4'
  '03'='5 to 9'
  '04'='10 to 19'
  '05'='20 to 49'
  '06'='50 to 99'
  '07'='100 to 249'
  '08'='250 to 499'
  '09'='500 to 999'
  '10'='1,000 to 2,499'
  '11'='2,500 to 4,999'
  '12'='5,000 or More'
;

VALUE $WOSRC
   '1'='Purchased all the wood'
   '2'='Obtained it all free of charge'
   '3'='Some purchased and some free'
;

VALUE $YES
  '1'='Yes'
;


VALUE $YESNO
  '1'='Yes'
  '2'='No'
  '8'='Refused'
  '9'='Don''t know'
;

VALUE $YRCONC
  '01'='Before 1920'
  '02'='1920 to 1945'
  '03'='1946 to 1959'
  '04'='1960 to 1969'
  '05'='1970 to 1979'
  '06'='1980 to 1989'
  '07'='1990 to 1999'
  '08'='2000 to 2003'
  '09'='2004 to 2007'
  '10'='2008 to 2012'
;

VALUE $ZVAR
  '0' = 'Reported'
  '2' = 'Estimated'
  '1' = 'Imputed'
  '8' = 'Missing'
  '9' = 'Inapplicable'
;

VALUE $ZVARCE
  '0' = 'Reported'
  '1' = 'Estimated for strip center'
  '2' = 'Imputed'
  '3' = 'Estimated using price'
  '9' = 'Inapplicable'
;
run;
