# Sample Data

# movieId,title,genres
# 1,Toy Story (1995),Adventure|Animation|Children|Comedy|Fantasy
# 2,Jumanji (1995),Adventure|Children|Fantasy

# Script to count the movies by genres


DEFINED myCSVLoader as org.apache.pig.piggybank.storage.CSVLoader;

data = LOAD '/user/douchebag/l.csv' using 
org.apache.pig.piggybank.storage.CSVLoader() AS (movieID:chararray,title:chararray,genres:chararray);

headless = FILTER data BY title != 'title';
