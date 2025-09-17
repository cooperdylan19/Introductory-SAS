/* IMPORTING TXT DELIM DATA */

DATA DELIMITED; * data step called delimited ;
	INFILE "~/Delimited.txt"; * read in file... 1 2 3 // 4 5 6 ;
	DELIMITER=' '; * single space delim ;
	INPUT A B C; * heading titles ;
	
RUN; 

/* IMPORTING TAB DELIM DATA */

PROC IMPORT OUT= TABDELIM
	DATAFILE="~/Unacceptable_Codes.txt"
	DBMS=TAB REPLACE;
	GETNAMES=YES; * if file has headings ;
	
RUN;

/* IMPORTING EXCEL DATA */


PROC IMPORT OUT= EXCELDATA
	DATAFILE="~/random_data.xlsx"
	DBMS=XLSX REPLACE; * TAB -> EXCEL ;
	GETNAMES=YES;
	MIXED=YES; * mixed data handles as text ;
	USEDATE=YES; * if dates in xlsx, format as SAS dates ; 
	SCANTIME=YES; * similar to USEDATE but for times ;
	RANGE="Sheet1$"; * Name of the sheet with $ after ;
	
RUN;


/* IMPORTING CSV DATA */

PROC IMPORT OUT= CSVSDATA
	DATAFILE="~/random_data.csv"
	DBMS=CSV REPLACE;
	GETNAMES=YES;
	DATAROW=2; * column where data begins ;
	
RUN;

/* IMPORTING ACCESS FILES */

PROC IMPORT OUT= ACCESSFILES
	DATATABLE="Codes" /* specifies table in database */
	DBMS=ACCESS REPLACE; * -> ACESS;
	DATABASE="~/Codes.mdb";
	SCANMEMO=YES; /* import long texts correctly */
	GETNAMES=YES;
	USEDATE=YES;
	SCANTIME=YES;
	
RUN;