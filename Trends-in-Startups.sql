-- Step 1: Getting started, take a look at the startups table. How many columns are there? -> 10 columns
SELECT * 
FROM startups;

-- Step 2: Calculate the total number of companies in the table. (We're calculating the number of rows in the 'startups' table.)
SELECT COUNT(*)
FROM startups;

-- Step 3: We want to know the total value of all companies in this table. Calculate this by getting the SUM() of the valuation column. 
SELECT SUM(valuation)
FROM startups;

-- Step 4: What is the highest amount raised by a startup? Return the maximum amount of money raised. (We use the MAX() function to find the highest value in the 'raised' column. This gives us the largest amount raised by any startup.)
SELECT MAX(raised)
FROM startups;

-- Step 5: Edit the query so that it returns the maximum amount of money raised, during ‘Seed’ stage.
SELECT MAX(raised)
FROM startups
WHERE stage = 'Seed';

-- Step 6: In what year was the oldest company on the list founded?
SELECT MIN(founded)
FROM startups;

-- Step 7: Return the average valuation.
SELECT AVG(valuation)
FROM startups;

-- Step 8: Return the average valuation, in each category. (We are grouping the data by 'category' and calculating the average valuation for each category.)
SELECT category, AVG(valuation)
FROM startups
GROUP BY category;

-- Step 9: Return the average valuation, in each category. Round the averages to two decimal places. (We are rounding the average valuations to 2 decimal places for better readability.)
SELECT category, ROUND(AVG(valuation),2)
FROM startups
GROUP BY category;

-- Step 10: Return the average valuation, in each category. Round the averages to two decimal places. Lastly, order the list from highest averages to lowest. (After rounding the averages, we order the result in descending order to show the highest average valuations at the top.)
SELECT category, ROUND(AVG(valuation),2)
FROM startups
GROUP BY category 
ORDER BY 2 DESC 

-- Step 11: First, return the name of each category with the total number of companies that belong to it.
SELECT category, COUNT(*)
FROM startups
GROUP BY category;

-- Step 12:  Next, filter the result to only include categories that have more than three companies in them. What are the most competitive markets. (The HAVING clause filters the results to only include categories that have more than three companies. This shows the most competitive categories)
SELECT category, COUNT(*)
FROM startups
GROUP BY category
HAVING COUNT(*) > 3;

-- Step 13: What is the average size of a startup in each location?
SELECT location, AVG(employees)
FROM startups
GROUP BY location;

-- Step 14: What is the average size of a startup in each location, with average sizes above 500?
SELECT location, AVG(employees)
FROM startups
GROUP BY location
HAVING AVG(employees) > 500;