use ebola;
LOAD DATA INFILE 'ebola_data_db_format.csv' 
INTO TABLE ebola.ebola_country
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;


LOAD DATA INFILE 'Country_continent.csv' 
INTO TABLE ebola.country_continent
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(continent_name, continent_code, country_name, two_letter_country_code, @three_letter_country_code, @country_number)
SET three_letter_country_code = nullif(@three_letter_country_code,''),
country_number = nullif(@country_number,'');

LOAD DATA INFILE 'countries of the world.csv' 
INTO TABLE ebola.Country_demography
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(country, Population, Area_sq_mi, @Population_density, @Coastline, @Net_migration, @Infant_mortality, @Gdp, @Literacy, @Phones, @Arable, @Crops,
@Other, @Climate, @Birth_rate, @Death_rate, @Agriculture, @Industry, @Service)
SET Population_density = safeDecimalValue(@Population_density),
Coastline= safeDecimalValue(@Coastline), 
 Net_migration=safeDecimalValue(@Net_migration), 
 Infant_mortality=safeDecimalValue(@Infant_mortality),
 Gdp=safeDecimalValue( @Gdp),
 Literacy=safeDecimalValue(@Literacy),
 Phones=safeDecimalValue(@Phones),
 Arable=safeDecimalValue(@Arable), 
 Crops=safeDecimalValue(@Crops),
 Other=safeDecimalValue(@Other),
 Climate=safeDecimalValue(@Climate),
 Birth_rate=safeDecimalValue(@Birth_rate),
 Death_rate=safeDecimalValue(@Death_rate),
 Agriculture=safeDecimalValue(@Agriculture),
 Industry=safeDecimalValue(@Industry),
 Service=safeDecimalValue(@service);



  
  
 
    



