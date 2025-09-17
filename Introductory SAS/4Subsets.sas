DATA EUROCARS;
	SET SASHELP.CARS; /* read in cars data */
	
	PROFIT = MSRP - INVOICE;
	
	IF PROFIT > 5000; /* WHERE does not work here since profit is a newly defined var */
	
	WHERE UPCASE(ORIGIN)="EUROPE"; /*modifies data*/
	
RUN;

PROC PRINT DATA=WORK.EUROCARS
	/* WHERE UPCASE(ORIGIN)="EUROPE"; */ /* does not modify data, just prints relevant data */

RUN;