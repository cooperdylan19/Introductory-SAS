# The fundamentals of SAS programming: syntax and data analysis

[Link to the introductory course I am following](https://www.youtube.com/watch?v=9U0a7DuRBYo&list=PLjrXzkmqZGHJOTesCBdZi2HjdB3-jWFDA)

.sas file names begin with the lesson number they correspond to


## **Lesson 1**: *What is SAS?*

**Achievements**: creating a data step, creating and running a procedure, adding comments in SAS

Further notes: 
- observations = rows (the individual records in the dataset)


## **Lesson 2**: *Reading in data*

**Achievements**: importing data with space and tab delimiters, importing excel, CSV, and access file data

Further notes: 
- /* ... */ comments seem less error prone than * ... ; due to not having a ;
- OnDemand SAS does not support all DBMS engines, cannot read Excel files
- If you wish to run this script, you will have to adjust the pathways accordingly for your own data


## **Lesson 3**: *Creating new variables*

**Achievements**: using basic mathematical operators, defining new variables, dealing will null values, if else statemenets, concatenating variables

Further notes: 
- Read in Cars from the SAS dataset


## **Lesson 4**: *Subsets*

**Achievements**: Creating subsets using if and where statements

Further notes: 
- where does not work for newly defined variables (when all contained within one step), use if
- where statements can remove data, or merely print the subset, depending on location


## **Lesson 5**: *Combining datasets*

**Achievements**: merge two datasets with mutual variable, boolean logic to remove specific entries

Further notes: 
- Sort data before merge (ascending or descending)
- IN= defines temporary variables, efficient


## **Lesson 6**: *Formatting*

**Achievements**: ...

Further notes: 
- ...


