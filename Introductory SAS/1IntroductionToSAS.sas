DATA TUTO; * creating a data step called TUTO;

INPUT A B C $; * heading titles, $ means C col is chars;

DATALINES; * means the below gets written in as one would exepct;

1 2 A
4 5 B
7 8 C

run; *executes above;


PROC PRINT DATA=TUTO; * printing the dataset just created;

run;