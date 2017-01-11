DEFINED myCSVLoader as org.apache.pig.piggybank.storage.CSVLoader;

data = LOAD '/user/douchebag/l.csv' using 
org.apache.pig.piggybank.storage.CSVLoader() AS (movieID:chararray,title:chararray,genres:chararray);

headless = FILTER data BY title != 'title';
