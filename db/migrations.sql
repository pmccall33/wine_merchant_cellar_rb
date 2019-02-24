DROP DATABASE IF EXISTS wine_merchant_cellar;
CREATE DATABASE wine_merchant_cellar;

\c wine_merchant_cellar

CREATE TABLE wines(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  winemaker VARCHAR(255),
  region VARCHAR(255),
  style VARCHAR(255),
  year SMALLINT
);



