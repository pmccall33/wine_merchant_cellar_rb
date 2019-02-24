DROP DATABASE IF EXISTS wine-merchant-bottles;
CREATE DATABASE wine-merchant-bottles;
wine-merchant-bottles
\c wine-merchant-bottles

CREATE TABLE items(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  winemaker VARCHAR(255),
  style VARCHAR(255),
  year SMALLINT
);



