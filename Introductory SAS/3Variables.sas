DATA WORK.CARS;
	SET SASHELP.CARS; /* SAS cars dataset */
	
	LENGTH CLASS $10.;
	
	IF MSRP > 30000 THEN DO;
		CLASS = "LUXURY";
		PRICE = "HIGH"; /* define class and price based on MSRP */
	
	END;
	
	ELSE CLASS = "NOT LUXURY"; /* ... otherwise */
	
	IF UPCASE(ORIGIN) = "EUROPE" THEN TAXES = MSRP * 0.1; /* define Europe tax */
	
	
	UNIQUE_CAR = CATX("|", MAKE, MODEL); /* concatenate make and model with | between */
	
	PROFIT = MSRP - INVOICE; /* define profit */
	
	PROFIT_FINAL = SUM(PROFIT, TAXES * -1); /* profit considering tax */
RUN;