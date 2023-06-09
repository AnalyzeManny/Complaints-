SELECT * 
FROM ConsumerComplaints; 

-- Find out how many complaints were recieved and sent on the same day. 
SELECT "date received", "date sent to company",
	COUNT ("Date Received") as Date_Received,
	COUNT ("DATE SENT TO COMPANY") AS Date_Sent
FROM CONSUMERCOMPLAINTS
GROUP by "Date Received", "Date Sent to Company";

--Extract the complaints recieved on New York. 
SELECT * FROM ConsumerComplaints
WHERE "State Name" = 'NY';

--Extract the complaints recieved on New York and California.
SELECT * FROM ConsumerComplaints
WHERE "STATE NAME" IN ('NY','CA');

--Extracting rows with the word "Credit". 
SELECT * 
FROM ConsumerComplaints
WHERE "Product Name" LIKE '%Credit%'; 

--Extracting rows that are late.
SELECT * 
FROM ConsumerComplaints
WHERE Issue like '%late%'

-- Count how many compaints capital one have gotten. 
SELECT 
	COUNT (Company) AS CapitalOne_Complaints
FROM ConsumerComplaints
WHERE Company = 'Capital One'; 

-- Bank of American Complaints tallied by each state. 
SELECT "state name",
	COUNT (Company) as BOA_Complaints 
FROM ConsumerComplaints
WHERE Company = 'Bank of America' 
GROUP BY "State Name"
ORDER BY BOA_Complaints DESC; 

-- Top 5 Company had the most complaints. 
SELECT TOP 5 Company, 
	COUNT (Company) AS Total_Complaints
FROM ConsumerComplaints
GROUP BY Company
ORDER BY Total_Complaints DESC;

-- How many complaints in New York.
SELECT
	COUNT ("STATE NAME") AS NY_Complaints
FROM ConsumerComplaints
WHERE "STATE NAME" = 'NY' 

-- How many Complaints by Product name.
SELECT "Product Name",
	COUNT ("Product Name") as Total_Compplaints
FROM ConsumerComplaints
GROUP BY "Product Name"; 

-- How many Complaints by Product name with over 1000 complaints. 
SELECT "PRODUCT NAME", 
	COUNT ("Product Name") AS Total_Complaints
FROM ConsumerComplaints
GROUP BY "Product Name"
HAVING COUNT (*) > 1000;

-- How many complaints each year. 
SELECT 
	COUNT ("Date Received") AS _YEAR
FROM CONSUMERCOMPLAINTS
WHERE "Date Received" LIKE '%2013%' 



	





