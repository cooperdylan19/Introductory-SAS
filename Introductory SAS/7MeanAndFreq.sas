TITLE "Origin frequency - one way";

PROC FREQ DATA=SASHELP.CARS;
	TABLES ORIGIN;
	
RUN; /* table of cars origins frequency and % of dataset */


TITLE "Origin and drivetrain frequency - one way";

PROC FREQ DATA=SASHELP.CARS;
	TABLES ORIGIN DRIVETRAIN;
	
RUN; /* same as above now with drivetrain table as well; two tables */


TITLE "Origin and drivetrain frequency - N way";

PROC FREQ DATA=SASHELP.CARS;
	TABLES ORIGIN * DRIVETRAIN;
	
RUN; /* splits origin and drivetrain, all together in one table */


TITLE "Origin and drivetrain frequency - N way/ LIST";

PROC FREQ DATA=SASHELP.CARS;
	TABLES ORIGIN * DRIVETRAIN / LIST;
	
RUN; /* origin and drivetrain as a list */


TITLE "Origin and drivetrain frequency - N way/ CROSS LIST";

PROC FREQ DATA=SASHELP.CARS;
	TABLES ORIGIN * DRIVETRAIN / CROSSLIST;
	
RUN: /* similar layout to list */


TITLE "Origin and drivetrain frequency - N way/ LIST with output";

PROC FREQ DATA=SASHELP.CARS;
	TABLES ORIGIN * DRIVETRAIN / LIST OUT=WORK.FREQ;
	
RUN; /* origin and drivetrain as a list with output */


TITLE "PROC MEAN - all numeric values";

PROC MEANS DATA=SASHELP.CARS MEAN KURT SKEW;
	CLASS ORIGIN;
	VAR MSRP;

RUN; /* stats for MSRP for each origin */