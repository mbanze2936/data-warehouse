* Name: Muriel Banze;
* PE05: Data cleansing with SAS;

libname myLib '/folders/myfolders' ;
data myLib.patients;
	infile '/folders/myfolders/patients.txt' dsd delimiter = ';' firstobs = 1;
	input patientNo $ gender $ visit $ HR SBP DBP DX $ AE $;
run;

* Remove duplicate records;
proc sort data=mylib.patients noduprecs;
	by patientNo;
run;

*Patient: Handling missing data and alpha numeric values;
data myLib.patients;
	modify myLib.patients;
	if missing(patientNo) then patientNo='248' ;
	if anyalpha(patientNo) then patientNo = translate(patientNo, '9', 'X');
run;

*Visit: Handling Any valid date, missing=1/1/1900, month>12, day>31, year>1999, non-digit 1/1/1900;
data myLib.patients;
	modify myLib.patients;
	if substr(visit,5,2) = '98' then substr(visit,5,4) = '1998';
	if substr(visit,1,2) > '12' then substr(visit,1,2) = '12';
	if substr(visit,3,2) > '31' then substr(visit,3,2) = '31';
	if substr(visit,5,4) > '1999' then substr(visit,5,4) = '1999';
	if missing(visit) or notdigit(visit) then visit = '01011900';
run;

*HR;
data myLib.patients;
	modify myLib.patients;
	if missing(HR) then HR = 40;
	if HR < 40 then HR = 40;
	if HR > 100 then HR = 100;	
run;

*SBP;
data myLib.patients;
	modify myLib.patients;
	if missing(SBP) then SBP = 80;
	if SBP < 80 then SBP = 80;
	if SBP > 200 then SBP = 200;	
run;

*DBP;
data myLib.patients;
	modify myLib.patients;
	if missing(DBP) then DBP = 60;
	if DBP < 60 then DBP = 60;
	if DBP > 120 then DBP = 120;
run;

*DX;
data myLib.patients;
	modify myLib.patients;
	if notdigit(trim(DX)) then DX = 999;
run;

*AE;
data myLib.patients;
	modify myLib.patients;
	if missing(AE) or AE not in ('0','1') then AE ='0' ;
run;

*Display final output;
proc print data=mylib.patients;
	title 'List of Patients';
run;

*Export to patients_clean.txt file;
proc export data=myLib.patients outfile='/folders/myfolders/patients_clean.txt' dbms=dlm replace;
	delimiter=';';
run;