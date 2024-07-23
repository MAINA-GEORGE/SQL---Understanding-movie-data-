# SQL Understanding movie data
## 📖 Background
You have just been hired by a large movie studio to perform data analysis. Your manager, an executive at the company, wants to make new movies that "recapture the magic of old Hollywood." So you've decided to look at the most successful films that came out before Titanic in 1997 to identify patterns and help generate ideas that could turn into future successful films.

## 💾 The data

## Movie Database Schema

This file describes the schema for the movie database table.

| Column Name       | Description                                         |
|-------------------|-----------------------------------------------------|
| id               | Unique identifier for each movie.                    |
| title              | The title of the movie.                              |
| release_year      | The year the movie was released to the public.       |
| country            | The country in which the movie was released.         |
| duration           | The runtime of the movie, in minutes.                 |
| language           | The original language the movie was produced in.     |
| certification      | The rating the movie was given based on suitability for audiences.  |
| gross              | The revenue the movie generated at the box office, in USD.  |
| budget             | The available budget the production had for producing the movie, in USD.                        |


## 💪 Challenge 
Help your team leader understand the data that's available in the cinema. films dataset. Include:

1. How many movies are present in the database?
2. There seems to be a lot of missing data in the gross and budget columns. How many rows have missing data? What would you recommend your manager to do with these rows?
3. How many different certifications or ratings are present in the database?
4. What are the top five countries in terms of number of movies produced?
5. What is the average duration of English versus French movies? (Don't forget you can use the AI assistant!)
6. Any other insights you found during your analysis?


## Conclusions:
After a careful investigation, I was able to get some insights from the database.

1. There are 4844 unique movies in the database.
2. There are 1076 rows with null values. I would recommend replacing the values with a default value like the mean of the column. There are also blanks present in some columns. I would also recommend replacing the blanks with a default value specific to the column.
3. There are 13 different certifications or ratings present in the database: 12 actual ratings and a blank rating.
4. The top five countries in terms of number of movies produced are: USA, UK, France, Canada and Germany in descending order.
5. English movies have a higher movie duration than French movies on average
6. Movies rated G,PG,PG-13 tend to generate more revenue than movies rated R,X,NC-17 on average (excluding rows with null values).
