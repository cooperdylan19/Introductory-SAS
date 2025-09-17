DATA WORK.FINANCE;
	SET FINANCE.FINANCE;
	
	LABEL
		SSN = "Social Security Number"; /* changing label name */
		/* Name = "First name"; */
		
RUN;

/* PROC CONTENTS DATA=WORK.FINANCE;
RUN; 

PROC CONTENTS DATA=FINANCE.FINANCE;
RUN; */


PROC FORMAT;
	VALUE SALARYRANGE 0-<25000 = "SALARY1"
					  25000-<30000 = "SALARY2"
					  30000-<50000 = "SALARY3";
					  
RUN;



PROC PRINT DATA=WORK.FINANCE LABEL SPLIT="*";
	FORMAT SALARY SALARYRANGE. NAME $4 DATE DDMMYY10.; /* salaries replaced with corresponding range */
	
	LABEL
		Name = "First *name"; /* name appears on second line in table */
		
RUN;