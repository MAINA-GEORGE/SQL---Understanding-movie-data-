-- 1. How many movies are present in the database?
-- 2. There seems to be a lot of missing data in the gross and budget columns. How many rows have missing data? What would you recommend your manager to do with these rows?
-- 3. How many different certifications or ratings are present in the database?
-- 4. What are the top five countries in terms of number of movies produced?
-- 5. What is the average duration of English versus French movies?


## Question 1: How many movies are present in the database?


-- count the number of unique movie titles in the cinema.films table

SELECT COUNT(DISTINCT title) AS total_movies
FROM cinema.films AS film;




## Question 2: There seems to be a lot of missing data in the gross and budget columns. How many rows have missing data? What would you recommend your manager to do with these rows?

-- This query counts the number of films in the cinema.films table
-- where either the gross or budget columns have NULL values.
SELECT COUNT(*)
FROM cinema.films
WHERE gross IS NULL OR budget IS NULL;




## Question 3:How many different certifications or ratings are present in the database?

-- This query counts the number of distinct certification values in the cinema.films table
SELECT COUNT(DISTINCT certification)
FROM cinema.films;




## Question 4: What are the top five countries in terms of number of movies produced?
-- This query retrieves the top 5 countries with the highest number of distinct movie titles in the cinema.films table.
-- It groups the results by country and orders them in descending order based on the count of distinct movie titles.

SELECT country, COUNT(DISTINCT title) AS total_movies
FROM cinema.films
GROUP BY country
ORDER BY total_movies DESC
LIMIT 5;




## Question 5: What is the average duration of English versus French movies?
-- This query calculates the average duration of films for specified languages (English and French) in the cinema.films table.
SELECT language, AVG(duration) AS average_duration
FROM cinema.films
WHERE language IN ('English', 'French')
GROUP BY language
ORDER BY language;




/* Conclusion 
After a careful investigation, I was able to get some insights from the database.

1. There are 4844 unique movies in the database.
2. There are 1076 rows with null values. I would recommend replacing the values with a default value like the mean of the column. There are also blanks present in some columns. I would also recommend replacing the blanks with a default value specific to the column.
3. There are 13 different certifications or ratings present in the database: 12 actual ratings and a blank rating.
4. The top five countries in terms of number of movies produced are: USA, UK, France, Canada and Germany in descending order.
5. English movies have a higher movie duration than French movies on average
6. Movies rated G,PG,PG-13 tend to generate more revenue than movies rated R,X,NC-17 on average (excluding rows with null values).
*/
