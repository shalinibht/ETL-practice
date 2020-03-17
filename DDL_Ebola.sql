Create database ebola;


  CREATE TABLE ebola_country (
  indicator varchar(500) DEFAULT NULL,
  country varchar(200) DEFAULT NULL,
  data_date date DEFAULT NULL,
  No_of_cases int DEFAULT NULL) ;
  
  CREATE TABLE country_continent (
  continent_name varchar(100) DEFAULT NULL,
  continent_code varchar(10) DEFAULT NULL,
  country_name varchar(100) DEFAULT NULL,
  two_letter_country_code varchar(10) DEFAULT NULL,
  three_letter_country_code varchar(10) DEFAULT NULL,
  country_number int DEFAULT NULL);
  
  CREATE TABLE country_demography (
  country varchar(100) DEFAULT NULL,
  Population decimal(15,2) DEFAULT NULL,
  Area_sq_mi decimal(15,2) DEFAULT NULL,
  Population_density decimal(15,2) DEFAULT NULL,
  Coastline decimal(15,2) DEFAULT NULL,
  Net_migration decimal(15,2) DEFAULT NULL,
  Infant_mortality decimal(15,2) DEFAULT NULL,
  Gdp decimal(15,2) DEFAULT NULL,
  Literacy decimal(15,2) DEFAULT NULL,
  Phones decimal(15,2) DEFAULT NULL,
  Arable decimal(15,2) DEFAULT NULL,
  Crops decimal(15,2) DEFAULT NULL,
  Other decimal(15,2) DEFAULT NULL,
  Climate decimal(15,2) DEFAULT NULL,
  Birth_rate decimal(15,2) DEFAULT NULL,
  Death_rate decimal(15,2) DEFAULT NULL,
  Agriculture decimal(15,2) DEFAULT NULL,
  Industry decimal(15,2) DEFAULT NULL,
  Service decimal(15,2) DEFAULT NULL); 
